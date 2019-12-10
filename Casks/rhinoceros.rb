cask 'rhinoceros' do
  version '6.20.19323.01022'
  sha256 'c47193ccbb998340fe006d70fed25546afc1ff5e3f42cbb441d8313f0a518d92'

  # mcneel.com was verified as official when first introduced to the cask
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
