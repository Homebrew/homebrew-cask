cask 'freefilesync' do
  version '8.6'
  sha256 'aaa1dd1e2dfcc39bf4673d8280cc6561ee8dc9921c4deb926ed336dd5aa1d57b'

  # download2114.mediafire.com/dl0o9adlw80g/bzdxny1n7cxozkh was verified as official when first introduced to the cask.
  url "https://download2114.mediafire.com/dl0o9adlw80g/bzdxny1n7cxozkh/FreeFileSync_#{version}_macOS.zip"
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
