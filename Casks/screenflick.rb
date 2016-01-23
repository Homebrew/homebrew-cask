cask 'screenflick' do
  version '2.7.5'
  sha256 'e370453338ef925e780e0c5693beccc1cd3cda68f1fcc5e0990b517dd7137330'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'f0148b49d8c21d68d9158cb701be2afa13eae95d8d8440c77f8cf57ef4d55541'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
