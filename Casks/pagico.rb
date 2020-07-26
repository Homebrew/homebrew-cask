cask 'pagico' do
  version '9.4.20200714'
  sha256 '6668ec67819b80004a9e0339f4ccee9ad14331ab14bc3b8300f9eb2acd61835d'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
