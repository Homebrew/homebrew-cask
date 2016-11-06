cask 'rhinoceros' do
  version '5.2.3'
  sha256 'ffdd80773b787ee8d85cc7cc22a2c85814a7f262d16a9f5a2a3b15f31489906f'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}.0/mac/#{version.major}CcommercialUpdates.xml",
          checkpoint: '037ccb00b5a0baf8788021c0222bd59921bd4ec6701584fb03221db4b1bb32d8'
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'

  auto_updates true

  app 'Rhinoceros.app'

  zap delete: [
                '~/Library/Preferences/com.mcneel.rhinoceros.plist',
                '~/Library/Caches/com.mcneel.rhinoceros',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl',
              ]
end
