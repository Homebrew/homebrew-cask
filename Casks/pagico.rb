cask 'pagico' do
  version '9.1.20200308'
  sha256 'e3780e25aed766b7ccd6ef80cab66ffdb104c30d4c2980ee29a519cce1125653'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
