cask 'iina' do
  version '0.0.10'
  sha256 '9f171fdada4554c1b596a3c193aafd87306844dc1fecc8a36739d88725ed8ac0'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.dmg"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '16fc807b3400bcc9b4af1c94924f3d2c04107739d8a7cfa8765e03beff5a2ade'
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
