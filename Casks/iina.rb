cask 'iina' do
  version '0.0.12'
  sha256 'e563e45666a97a2c618dfcebfdfeae8ac22f6d68af0071a7b26f34458187152c'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: 'f465cc540b2fdbe4582b02c2b5eec9a227cc78e0caef939f5e0dc852487e96c7'
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
