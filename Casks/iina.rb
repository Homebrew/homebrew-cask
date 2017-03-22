cask 'iina' do
  version '0.0.6'
  sha256 '1395d8e5574dce5e7fa5685a66403259501463cc09abd1c47b653ccfdd487015'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.dmg"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: 'd96a00016d5edc6be4514c771c1155cca46570b04eedb0bdaa07f2a3e864884f'
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
