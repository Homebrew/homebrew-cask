cask 'screenflick' do
  version '2.7.37'
  sha256 '786bed4f46aa7361dbab447b2fa631e2f4d2fe0cd9beedbb1105d701190038ef'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
