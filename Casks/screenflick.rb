cask 'screenflick' do
  version '2.7.41'
  sha256 '2973d0ba0a5799867d53564d6ce5151aa74fe2ba6c33096f98a675f4e62eb1eb'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
