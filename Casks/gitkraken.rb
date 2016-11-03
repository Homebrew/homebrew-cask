cask 'gitkraken' do
  version '1.9.0'
  sha256 '6e727515202bac6af5ab2d15427c984ee795de3647ade4c0e66f71d00f9685fc'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '6a9a0bd89cda61c0d833498f1f068c04970d4083246adde25d04bffef01a45df'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap delete: [
                '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
                '~/Library/Application Support/GitKraken',
                '~/Library/Caches/GitKraken',
                '~/Library/Caches/com.axosoft.gitkraken',
                '~/Library/Preferences/com.axosoft.gitkraken.plist',
                '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
                '~/.gitkraken',
              ]
end
