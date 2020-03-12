cask 'soundsource' do
  version '4.2.2'
  sha256 '8706ba78c40ff892dbea0b2b4b7ae91ed010b7d7833424cfaf81cafdc145efe7'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
