cask 'rhinoceros' do
  version '6.24.20079.23332'
  sha256 '199c6047a7a35926b3776237e3acfcb1f53ff9e6a2ada0e421e58077a782e88c'

  # mcneel.com/ was verified as official when first introduced to the cask
  url "https://files.mcneel.com/rhino/#{version.major}/mac/releases/rhino_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}/mac/updates/commercialUpdates.xml"
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'

  auto_updates true

  app 'Rhinoceros.app'

  zap trash: [
               '~/Library/Preferences/com.mcneel.rhinoceros.plist',
               '~/Library/Caches/com.mcneel.rhinoceros',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*',
             ]
end
