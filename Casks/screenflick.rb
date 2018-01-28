cask 'screenflick' do
  version '2.7.30'
  sha256 '2b1c2993aa5af1072d153308ef91cf9ccf74c096d3d8188d449fb797d8f544d9'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml",
          checkpoint: 'c4c35cb76288f67b9baab5f8ac5f594a9dd8b59b98a3900fe86f6b1d8ef236c3'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
