cask 'pagico' do
  version '9.3.20200521'
  sha256 'c4a8036696c3c85af3bd3b1d9750cbc0433d1cac7838252da25ffdb02b0c3e0d'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
