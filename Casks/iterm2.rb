cask :v1 => 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.4'
  sha256 '1062b83e7808dc1e13362f4a83ef770e1c24ea4ae090d1346b49f6196e9064cd'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.gsub('.','_')}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  appcast 'https://iterm2.com/appcasts/final.xml',
          :sha256 => 'dbe44305b0b7e620fb020a60d6ca78042144a8e04b4b4f2fc3cec84e0df9fc44'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
