cask 'audio-hijack' do
  version '3.3.3'
  sha256 '2f7a71ec69a58220520639f623a14caab19405c498de8e2e016039edda99eaf2'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: 'df40cf3050072b517ae78d04abee1d561bbf62c4bcffd29356562cb1afa119ca'
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
