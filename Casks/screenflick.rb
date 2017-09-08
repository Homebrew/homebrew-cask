cask 'screenflick' do
  version '2.7.27'
  sha256 '12fa339ded27f11c444e421ec688f94ac14ae3f276cbfdb3952456badc53de6a'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml",
          checkpoint: '950fb37bb1bbcf0abef5a7518d1f67de79951b7417f121e0cdd47f5dd8e6ef04'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
