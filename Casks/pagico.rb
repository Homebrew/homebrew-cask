cask 'pagico' do
  version '9.0.20200117'
  sha256 '27e48c4da9a0bff2489ca49626fe5340b25ad4cca47e3023636fa5268f91b318'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
