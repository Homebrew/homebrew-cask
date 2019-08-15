cask 'gitkraken' do
  version '6.1.2'
  sha256 'fa06f3e9cc1b3d56487eb4cc70b7d9782b304733e74a89fd2a8f032a910322a1'

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
