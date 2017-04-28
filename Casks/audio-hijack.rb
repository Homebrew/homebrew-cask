cask 'audio-hijack' do
  version '3.3.2'
  sha256 '7339455831699d5c7b55f0bee2445c2a63c4c6f29e70791b384215a283f98a4b'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: '5e41bc1722ba4e877b5c0b87835a1b9b7c105e9854489f616175db69a8a52cf3'
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
