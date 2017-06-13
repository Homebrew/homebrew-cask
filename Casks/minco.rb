cask 'minco' do
  version '2.0.28'
  sha256 'dca60abe4d9b654dbd888196b6504a036fe44985898d33b9b8329ea9ec6e7da2'

  url "http://www.celmaro.com/files/minco#{version.major}/Minco.zip"
  appcast "http://www.celmaro.com/updates/minco#{version.major}/minco.xml",
          checkpoint: '022f009680320da59fa0f6a6b5b7620a31f1d0a06c952b3ac5afe5c49138b658'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'

  depends_on macos: '>= :yosemite'

  app 'Minco.app'
end
