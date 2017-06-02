cask 'audio-hijack' do
  version '3.3.4'
  sha256 'f09d429133554616a56cf5f154d559117aaa4642c32db38fe3c5bacd1dc0838d'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: 'e70c82ddc6154bc0665ca08535d2505ca4214be1d6b1c2f2ef8c2c7dad659524'
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
