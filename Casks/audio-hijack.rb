cask 'audio-hijack' do
  version '3.3.8'
  sha256 'afb5288a11e4a503acf4d044c72537e036a7de7af36e8d670c558b97ad7c89bb'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast "https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack#{version.major}",
          checkpoint: '5b28cb7b88a54355125216bccb8abf5446b10c29e8d31e90ea4b5851b77739fd'
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
