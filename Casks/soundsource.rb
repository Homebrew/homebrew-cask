cask 'soundsource' do
  version '3.0.1'
  sha256 '4d26415d718e7be8f8e0233be281b55e636330b6c581ea345796d8255470766d'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php',
          checkpoint: '73af7680362997b2d1cf34422bda1e2adf8301fb08279fd5193bfdbec288e95f'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  app 'SoundSource.app'
end
