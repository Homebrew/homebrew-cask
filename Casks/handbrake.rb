cask 'handbrake' do
  version '1.2.1'
  sha256 '38ac310eaa7dda470d170093da3d68d111f042647d1a822b9818e83708c261fc'

  url "https://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom'
  name 'HandBrake'
  homepage 'https://handbrake.fr/'

  auto_updates true

  app 'HandBrake.app'

  zap trash: [
               '~/Library/Application Support/HandBrake',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*',
               '~/Library/Caches/fr.handbrake.HandBrake',
               '~/Library/Preferences/fr.handbrake.HandBrake.plist',
               '~/Library/Saved Application State/fr.handbrake.HandBrake.savedState',
             ]
end
