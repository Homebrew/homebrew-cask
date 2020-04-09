cask 'audio-hijack' do
  version '3.7.1'
  sha256 'e6387b0c6ecc13a8f3bde63a75e712fa3a422993fc3629bbce26c15f673f48e4'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.com/audiohijack/releasenotes.php'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Audio Hijack.app'

  zap trash: [
               "~/Library/Preferences/com.rogueamoeba.audiohijack#{version.major}.plist",
               '~/Library/Application Support/Audio Hijack',
               '~/Music/Audio Hijack',
             ]
end
