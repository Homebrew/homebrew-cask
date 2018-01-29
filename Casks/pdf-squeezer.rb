cask 'pdf-squeezer' do
  version '3.8.1'
  sha256 '0eb2941f4a7fc009969b23463ed497c3aa34ae95ee299c6dabf5a670b01ec833'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml',
          checkpoint: 'f55d2ab3065f7fca7e499aedc6d453fa2c00d90db1115a51a0fe73e3a3362d09'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
