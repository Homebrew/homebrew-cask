cask 'pagico' do
  version '9.0.20191214'
  sha256 '7f13221ff5febbd23dbc58c826c3e341cf26798e7dd901c56e4a24c0f82f298b'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
