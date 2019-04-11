cask 'soundsource' do
  version '4.0.2'
  sha256 'a3a84a08eb12c6825dbeaa0258574831cbcda6004ee90c99ca57f48774ba83cc'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&version=4008000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
