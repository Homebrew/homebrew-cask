cask 'gitkraken' do
  version '1.5.4'
  sha256 'a5555de7218313851447c43e5f5c86ce0a42d6e8dfd3315f0cb4d688c1506a4e'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'f7b9df24ffb1d26c58aa07e33244a4f508db46a3138bfb5766f3eaf9dfdd3e98'
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
