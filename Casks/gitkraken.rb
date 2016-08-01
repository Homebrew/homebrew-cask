cask 'gitkraken' do
  version '1.5.1'
  sha256 '327606e536f6eb445a0e1b38a329efa53edda0616a6235ce8fa89d0dfe53ae82'

  url "http://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '7bd7202c2e753260f39adcdd8337ced6c271786510f7c976010b52373ac25f20'
  name 'GitKraken'
  homepage 'http://www.gitkraken.com/'
  license :gratis

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
