cask 'iina' do
  version '0.0.11'
  sha256 'b4126621d377e440e4f39537e9858786e7e54817ead190d04fe36fea10b26403'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.dmg"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '8f6d32750822605138ba57ed60126166d9e0ece47d9a678e6a6f4a0df0d25567'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'IINA.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl',
                '~/Library/Application Support/com.colliderli.iina',
                '~/Library/Caches/com.colliderli.iina',
                '~/Library/Preferences/com.colliderli.iina.plist',
                '~/Library/Saved Application State/com.colliderli.iina.savedState',
              ]
end
