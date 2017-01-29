cask 'audio-hijack' do
  version '3.3.2'
  sha256 '7339455831699d5c7b55f0bee2445c2a63c4c6f29e70791b384215a283f98a4b'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: '6c8bca6747961bfd604191d57047623ed8162f4418b049919b11a83067e68719'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'

  depends_on macos: '>= :mavericks'

  app 'Audio Hijack.app'

  zap delete: [
                "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
                '~/Library/Application Support/Audio Hijack',
                '~/Music/Audio Hijack',
              ]
end
