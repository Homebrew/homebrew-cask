cask 'gitkraken' do
  version '1.6.1'
  sha256 '91231e7e360bb763f3abc7e273cde0a9530959ae88c3ed8555eebad42ec591b7'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'f79fe3b9903b8496c1b3b908297fa86ddc3eae178e66df4f65f4667bdd161ce6'
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
