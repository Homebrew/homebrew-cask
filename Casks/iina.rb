cask 'iina' do
  version '0.0.7'
  sha256 '440eb7f480fcd902199dc53c63098f510c52a16ed14e3533ddff2d98bb2d46f3'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.dmg"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '62bb9f89e66742a616ee3acf493dc7c06942bda7e9fe9f937af9d15ee45e5582'
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
