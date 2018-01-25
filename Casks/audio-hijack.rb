cask 'audio-hijack' do
  version '3.3.5'
  sha256 'd3c34d1d2ba9342284b522a628fe73c24d8c99acbdeb5eb450f068e25b08175e'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: 'fe8369152c857488048597b47b7e88875036b48a38968fa1670418344009fea7'
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
