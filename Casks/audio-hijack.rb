cask 'audio-hijack' do
  version '3.3.6'
  sha256 'fa36539c2adb98e16fbb22704c5b9a63c4ab49a0fc1db51c1636a6f0764b21ed'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: '14ff9254275d7734b95b1a0d19a55a528cd4b97830d87439bb4c9c346c3ec303'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'

  depends_on macos: '>= :mavericks'

  app 'Audio Hijack.app'

  zap trash: [
               "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
               '~/Library/Application Support/Audio Hijack',
               '~/Music/Audio Hijack',
             ]
end
