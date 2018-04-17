cask 'soundsource' do
  version '3.0.3'
  sha256 'f701048f7823bb5e91c50128f22a975be227a8d55a5dcea18bcfc1da43da05b0'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php',
          checkpoint: '8e4f07ca18e1ad5998f886b48ffc29ee92d39debb76f862de579dab41601952f'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :yosemite'

  app 'SoundSource.app'
end
