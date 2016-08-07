cask 'rhinoceros' do
  version '5.2'
  sha256 '2c2fd9553031c5f9709a9ddda188c32806f8293c30e2ac77b19d7fc34b607aa2'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CcommercialUpdates.xml',
          checkpoint: '259ba86e3ece12b204264854a73bf381e530ded1110e85bf623e7b75297d9f2e'
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'
  license :commercial

  auto_updates true

  app 'Rhinoceros.app'

  zap delete: [
                '~/Library/Preferences/com.mcneel.rhinoceros.plist',
                '~/Library/Caches/com.mcneel.rhinoceros',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl',
              ]
end
