cask 'screenflick' do
  version '2.7.45'
  sha256 'da4e78c232804e48e64919a244dd5ddee70365e56bc2646ce78333a7aeff63ce'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
