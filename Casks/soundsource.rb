cask 'soundsource' do
  version '3.0.0'
  sha256 '00be2f147b624e27826417c40f2640014540c81b855e27d3c9c0353dd80edd3b'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php',
          checkpoint: '726909dc10a44857765c053a83b007a35f21312aa14a2381d4a967e245e59296'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  app 'SoundSource.app'
end
