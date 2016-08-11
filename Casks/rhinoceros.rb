cask 'rhinoceros' do
  version '5.2.1'
  sha256 'af6c6142d6c6f3bec9d72dd9111a7150693357cf60d150d44fe5681f13a1f19f'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast 'https://files.mcneel.com/rhino/5.0/mac/5CcommercialUpdates.xml',
          checkpoint: '91467e2ee25ef36dd48c226b54c6cdd7d39c5f0e21e7658531ff885b4cf777a3'
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
