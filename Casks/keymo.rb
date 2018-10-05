cask 'keymo' do
  version '1.2.6'
  sha256 '5d9f74cfc915ea580b09b10db6e0170f310159e95d943910950bcc819819916c'

  url 'https://manytricks.com/download/keymo'
  appcast 'https://manytricks.com/keymo/appcast.xml'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo/'

  auto_updates true

  app 'Keymo.app'

  zap trash: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
