cask 'screenflick' do
  version '2.7.11'
  sha256 '054fe023cf430b5a55169c84a3e3c12537fa8f86fbb6db70068603d7093776b8'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '2c73b2dab5ab08180d2d1a86f8b4d8d31c0e59a58e37a3285e861e126b3c1312'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
