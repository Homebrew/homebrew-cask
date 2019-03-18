cask 'screenflick' do
  version '2.7.40'
  sha256 '4fcf5747b4b67196478a85bd6cc8a6d1798f8b3e6d189ebbeba3c86716cd9988'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
