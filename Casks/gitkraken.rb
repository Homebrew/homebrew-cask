cask 'gitkraken' do
  version '1.5.3'
  sha256 '7f49e456dd4452d233eab2efdd561f77cb7f45f5f614d74d985b5dea84759a5b'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '82943a27262ea25a8de0449d5faa5e5e7582eedd7d18fc1f92db478fe80879c8'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'
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
