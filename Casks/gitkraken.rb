cask 'gitkraken' do
  version '6.5.4'
  sha256 '91f902e572d24acf9e9d02dde1eb2acfed3dad673817ae6ed5284abd46748247'

  # release.axocdn.com/darwin was verified as official when first introduced to the cask
  url 'https://release.gitkraken.com/darwin/installGitKraken.dmg'
  appcast 'https://www.gitkraken.com/download'
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
