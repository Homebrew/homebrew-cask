cask 'rhinoceros' do
  version '5.4.1'
  sha256 'a2fcda3a5143dd06b84e53c34cbd40e8dbd9c3319130bfee9b23199c770b7c32'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/#{version.major}.0/Mac/Rhinoceros_#{version}.dmg"
  appcast "https://files.mcneel.com/rhino/#{version.major}.0/mac/#{version.major}CcommercialUpdates.xml",
          checkpoint: 'af98714fe2491ac75ac83c87b153692ac55e31c4d4a3243be12ae509f890d0c9'
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
