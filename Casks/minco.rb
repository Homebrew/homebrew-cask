cask 'minco' do
  version '2.0.30'
  sha256 'dbb94a8a76d691a4e6447711af27df52be3d2dc0dfbaea93397b1eead8ab997e'

  url "http://www.celmaro.com/files/minco#{version.major}/Minco.zip"
  appcast "http://www.celmaro.com/updates/minco#{version.major}/minco.xml"
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'

  depends_on macos: '>= :yosemite'

  app 'Minco.app'
end
