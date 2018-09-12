cask 'gitkraken' do
  version '4.0.3'
  sha256 '11a36e420d4e473d0452cea4bad04412dd26706a21d37c6f81f1822439aa4dad'

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
