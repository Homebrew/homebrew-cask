cask 'screenflick' do
  version '2.7.20'
  sha256 '184a2f3929e70da2771127c2a16955a1b33512c6750b46f0dbb73b8fc5939cde'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml",
          checkpoint: '3cbb88dd50b651a17f30270b3892b69b1d2c1528148b156f840d4f172dfecf83'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
