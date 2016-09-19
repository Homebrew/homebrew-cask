cask 'screenflick' do
  version '2.7.17'
  sha256 'f942c00745bac1148e2d8f02e6064e0db1057e554392ff1ce6da7e8e34779010'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '15095c8714a7578b9129c189a7d05215215b0628177084efa3841684d17278b5'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
