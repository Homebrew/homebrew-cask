cask 'rhinoceros' do
  version '6.26.20147.06482'
  sha256 'bcd69a6afaae1c9fab5322a3413e824cc8dfa95afb1e915e29a8cfe6dc04b854'

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
