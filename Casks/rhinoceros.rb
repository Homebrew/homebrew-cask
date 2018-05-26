cask 'rhinoceros' do
  version '5.4.2'
  sha256 '25f47d059f5b83e290ecbcc2375d62478f93de5fb53b23525afa7a00d2fcded6'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}.0/mac/#{version.major}CcommercialUpdates.xml",
          checkpoint: '08ffc8e4773d87bada8e5ef9b18601d4df014389cfe60afc4fa6fb834f9a9962'
  name 'Rhinoceros'
  homepage 'https://www.rhino3d.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Rhinoceros.app'

  zap trash: [
               '~/Library/Preferences/com.mcneel.rhinoceros.plist',
               '~/Library/Caches/com.mcneel.rhinoceros',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mcneel.rhinoceros.sfl*',
             ]
end
