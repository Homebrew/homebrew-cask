cask 'audio-hijack' do
  version '3.6.4'
  sha256 'd02ce6e19fc5bd032048676c9021ad681a916d56cf0c5a64564ab2f724751d13'

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
