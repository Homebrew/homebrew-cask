cask 'audio-hijack' do
  version '3.5.3'
  sha256 '745d4658dbcd2801326701819dc3becde7459bfdfb7a2cfeae470e4a4cbeec7d'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.com/audiohijack/releasenotes.php'
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
