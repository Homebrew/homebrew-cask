cask 'soundsource' do
  version '3.1.0'
  sha256 '7c0cf8add4e882a3f0062a433a41d96f5e0f7fae08b6382cffe44c55bb774996'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php',
          checkpoint: '5deec17ada58534a944a14536dcf19e54b34a65d91ed9dda9df760e7e000a50d'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :yosemite'

  app 'SoundSource.app'
end
