cask 'soundsource' do
  version '4.1.1'
  sha256 '36f7b5547d378edbbd5de575dc1fdef32d7f2dfd9fbebe2ef8f6419f3545450a'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&version=4008000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
