cask 'audio-hijack' do
  version '3.5'
  sha256 '392114c74b5f23370158303f2caea186eb11d8ee80fad840b4edf90a5e752e2c'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}"
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
