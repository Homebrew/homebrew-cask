cask 'soundsource' do
  version '4.1'
  sha256 '4482d24a4700d5978457a5736095ba6644184eb6c43ea8c0c4628520a483655b'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&version=4008000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
