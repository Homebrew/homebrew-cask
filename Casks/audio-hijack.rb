cask 'audio-hijack' do
  version '3.6.0'
  sha256 '107e6cbec991a2a1808cdc7348b5bcb8d40967dc79ccb777fea9aeb9730f26eb'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.com/audiohijack/releasenotes.php'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'

  depends_on macos: '>= :sierra'

  app 'Audio Hijack.app'

  zap trash: [
               "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
               '~/Library/Application Support/Audio Hijack',
               '~/Music/Audio Hijack',
             ]
end
