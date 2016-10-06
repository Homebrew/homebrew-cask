cask 'gitkraken' do
  version '1.7.1'
  sha256 'e5cd076c9c6331257a7964ae7c4d86a07d7f24a30bae3eeb3096227d38c38e54'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'b72ab85e252111731e04080f667d695eb32c28b73a67e51d456a52b169a3f84c'
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
