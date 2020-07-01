cask 'soundsource' do
  version '4.2.4'
  sha256 'd89891b1de33a71c05fbda95536284c97be175540eec93324365aba53164248e'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
