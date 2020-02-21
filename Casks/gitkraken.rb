cask 'gitkraken' do
  version '6.5.3'
  sha256 '01f9391185fd076bd351fb88199b2766e5081511780ef2720f782e918d83ef97'

  # release.axocdn.com/darwin was verified as official when first introduced to the cask
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
