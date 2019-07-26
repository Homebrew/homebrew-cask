cask 'soundsource' do
  version '4.1.2'
  sha256 '24a5e99328ae00f2e565dab706f9eca96c902111d696629783911dfce64cb11f'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&version=4008000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
