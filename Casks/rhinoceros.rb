cask 'rhinoceros' do
  version '5.5.3'
  sha256 '6464801a959fd7528ba386c02d244add6abf457da4558059ebc66acd731ff327'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}.0/mac/#{version.major}CcommercialUpdates.xml"
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
