class Skitch < Cask
  version '2.7.5'
  sha256 '84df5bf81fcc60b38ab2525d5c6db804a3f9047a523b3bff0bf1a8e1907966fc'

  url "http://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  homepage 'http://evernote.com/skitch/'
  license :unknown

  app 'Skitch.app'
  zap :delete => [
                  '~/Library/Preferences/com.plasq.skitch.plist',
                  '~/Library/Preferences/com.plasq.skitch.history',
                 ]
end
