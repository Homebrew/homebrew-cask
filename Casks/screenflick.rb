cask 'screenflick' do
  version '2.7.38'
  sha256 'a14fec78920a1992d836460235baed164592e112d4c1f9d742383779d3ab1962'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
