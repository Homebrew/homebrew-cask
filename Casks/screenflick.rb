cask 'screenflick' do
  version '2.7.45'
  sha256 '94162122ccf75d004240427368b4428e6babe5e10b423987dfcc433872ffcff0'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
