cask 'gitkraken' do
  version '5.0.2'
  sha256 'cf9301f305b880b8c59acfbf31d302b50fec6835def4da138c26e00600d2fe06'

  url "https://release.gitkraken.com/darwin/GitKraken-v#{version}.zip"
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
