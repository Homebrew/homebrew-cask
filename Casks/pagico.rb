cask 'pagico' do
  version '9.2.20200413'
  sha256 'cc43841d1e254f1a2fed11f54d073b4b9b36dcc9d135126cff3a407d356fb393'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
