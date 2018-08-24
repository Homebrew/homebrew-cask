cask 'screenflick' do
  version '2.7.35'
  sha256 '0a827bf1d8d96cf57142584aa282d0227aa39c5c85b6e00d6dfa76d3b30f681e'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
