cask 'audio-hijack' do
  version '3.3.7'
  sha256 '8ec65d645e85f8517e286bc63934526b474e265854796b1fa7380380bd573b42'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: 'e8626be322fc61e50c980b1b3d9ec846eee59fd463147c8e7d70c8f3c4855c09'
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
