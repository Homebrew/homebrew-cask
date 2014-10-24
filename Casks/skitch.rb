class Skitch < Cask
  version '2.7.3'
  sha256 'f29755fb6083dc256988c40a55e3a8e76ad3a21015e2aa20af1fe8510e9f63f9'

  url "http://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  homepage 'http://evernote.com/skitch/'
  license :unknown

  app 'Skitch.app'
  zap :delete => [
                  '~/Library/Preferences/com.plasq.skitch.plist',
                  '~/Library/Preferences/com.plasq.skitch.history',
                 ]
end
