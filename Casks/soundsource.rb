cask 'soundsource' do
  version '3.1.1'
  sha256 'c8e916361ab864c81c8cae212c93598d79a9ad40ac1c53c0a4a8d10c9ce85cab'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :yosemite'

  app 'SoundSource.app'
end
