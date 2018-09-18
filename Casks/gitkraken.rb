cask 'gitkraken' do
  version '4.0.4'
  sha256 '58eee5593e67e30aed68622b382231b7fd41f76cbd85ad666289629df909deaa'

  url "https://release.gitkraken.com/darwin/GitKraken-v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap trash: [
               '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
               '~/Library/Application Support/GitKraken',
               '~/Library/Caches/GitKraken',
               '~/Library/Caches/com.axosoft.gitkraken.ShipIt',
               '~/Library/Caches/com.axosoft.gitkraken',
               '~/Library/Preferences/com.axosoft.gitkraken.helper.plist',
               '~/Library/Preferences/com.axosoft.gitkraken.plist',
               '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
               '~/.gitkraken',
             ]
end
