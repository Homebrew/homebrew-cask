cask 'soundsource' do
  version '4.2.0'
  sha256 'bdf1882d6642659cdb57885a9bd78499d3a7b26cd6e7e911557d8b06ff292768'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
