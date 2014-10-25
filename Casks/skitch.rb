class Skitch < Cask
  version '2.7.4'
  sha256 '66b01d9363b1954b449ad37d405e4f44ed56ca85172bfd2e4e26f43dd3fd3895'

  url "http://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  homepage 'http://evernote.com/skitch/'
  license :unknown

  app 'Skitch.app'
  zap :delete => [
                  '~/Library/Preferences/com.plasq.skitch.plist',
                  '~/Library/Preferences/com.plasq.skitch.history',
                 ]
end
