cask 'gitkraken' do
  version '6.0.0'
  sha256 '692727165fd4a2249c8123594e0c96b5a6fe3b5102cccc7a6b03e30d244abe25'

  url 'https://release.gitkraken.com/darwin/installGitKraken.dmg'
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
