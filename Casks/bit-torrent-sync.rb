class BitTorrentSync < Cask
  url 'http://btsync.s3-website-us-east-1.amazonaws.com/BTSync.dmg'
  homepage 'http://labs.bittorrent.com/experiments/sync.html'
  version 'latest'
  no_checksum
  link 'BitTorrent Sync.app'
end
