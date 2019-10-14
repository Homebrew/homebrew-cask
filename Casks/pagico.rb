cask 'pagico' do
  version '8.18.2427'
  sha256 '4d852f807f09812d3deb52c202ae81fedb46e8944a67bf65999682680e0b893a'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
