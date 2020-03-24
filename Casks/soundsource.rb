cask 'soundsource' do
  version '4.2.3'
  sha256 'b622bbcb0318a12b7b3df1db370fcdbe02a290ced589980b2560addb648bd44e'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
