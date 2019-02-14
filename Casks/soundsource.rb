cask 'soundsource' do
  version '3.1.2'
  sha256 'b6f4aa22f70519f5e504a7d9d956e649f78522c735d4ea8224171b9b487f6139'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :yosemite'

  app 'SoundSource.app'
end
