#!/bin/bash
 
# remove old dumps 5 days
find /path/to/backups -mtime +5 -type f -delete

# dump db
pg_dump --username=username --host=127.0.0.1 | gzip > /path/to/backups/pg_dump_"`date +\%d_\%m_\%Y`".gz
