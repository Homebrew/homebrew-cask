cask 'gitkraken' do
  version '4.0.1'
  sha256 '29fa8e39fbcd8fd24b3b2ed9ca74b4c91790d1821f8d60eb4084e00bb3bacfbc'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://support.gitkraken.com/release-notes/current'
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
