cask 'pagico' do
  version '9.0.20200118'
  sha256 'bc165e8b67228286a8bd8735be1d985d17e63214b11a27f2e36e394485ed3ff5'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
