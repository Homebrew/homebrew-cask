cask 'pagico' do
  version '9.0.3050'
  sha256 '32c63b76a95464b72bdbeb6dcdeb7c12a47d1bb00eba9f625a844827cd499916'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
