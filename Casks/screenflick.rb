cask 'screenflick' do
  version '2.7.43'
  sha256 '12a9279f46044c19c5e5cc12e64d4010be5095b7f6da52d29abaf1c8ad9fedf3'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml"
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
