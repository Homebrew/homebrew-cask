cask 'screenflick' do
  version '2.7.26'
  sha256 'ff15883534369658225eb2a830169cd9ba1b30167db8e2e8de1c601f6ab695a4'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml",
          checkpoint: 'e2118080efe6b2cbe7f2a8b932f895a74982e3590f1c7787e2d836e2797514b8'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
