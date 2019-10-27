cask 'screenflick' do
  version '2.7.44'
  sha256 '982b3282b8ee8c915805d8e561d1c731a005bc7d100216c98cee38c2decc3bd8'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
