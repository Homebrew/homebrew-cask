cask 'screenflick' do
  version '2.7.42'
  sha256 '1bc49483ec478d6933cdf9c0d2720059df8c64ad1637422d224fdd34563c9aa7'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
