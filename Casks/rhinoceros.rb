cask 'rhinoceros' do
  version '5.2.4'
  sha256 'fcaf19fb969608c5952b9b98771ba121f521362bab773fcba7c8831c04430aeb'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}.0/mac/#{version.major}CcommercialUpdates.xml",
          checkpoint: '7eec993f342f384ef86530afe43c662e10553db89a4a42fba475f9b0b2fc73da'
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
