cask 'soundsource' do
  version '4.2.1'
  sha256 'e0bb2f3c1276a974de21a861ab756ca8851a050b09b0c0a059613a438459c7a5'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=10146&version=4000000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :sierra'

  app 'SoundSource.app'
end
