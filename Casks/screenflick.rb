cask 'screenflick' do
  version '2.7.32'
  sha256 '287e80e0242c25d66c1dbb126a7f5d20265c71b03bffd3a45fd2e59ceed5ed46'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
