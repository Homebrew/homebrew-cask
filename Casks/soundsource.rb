cask 'soundsource' do
  version '4.2.5'
  sha256 'cc0999faa8abf62a02e077209e9d4f0dadffb7b10dd809a84b2d4ba59dd3955d'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
