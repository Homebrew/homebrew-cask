cask 'gitkraken' do
  version '6.1.0'
  sha256 '5f2e5e3df06d6da8e427ad36dd9b8f58a5a86229287dfd4250776e510a637d03'

  # release.axocdn.com/darwin/installGitKraken.dmg was verified as official when first introduced to the cask
  url 'https://release.axocdn.com/darwin/installGitKraken.dmg'
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
