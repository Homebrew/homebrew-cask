cask 'gitkraken' do
  version '7.0.1'
  sha256 '94588f2991f6a7f09ed79668f6f218a37e404d6f0cb9669b069a51edcadcce9c'

  # release.axocdn.com/darwin/ was verified as official when first introduced to the cask
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
               '~/Library/Cookies/com.axosoft.gitkraken.binarycookies',
               '~/Library/Preferences/com.axosoft.gitkraken.helper.plist',
               '~/Library/Preferences/com.axosoft.gitkraken.plist',
               '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
               '~/.gitkraken',
             ]
end
