cask 'screenflick' do
  version '2.7.34'
  sha256 'e0991bdbf8c7a20ca01217f1f576adcb71dc15986b747226ccb8f67a8a8453f4'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
