cask 'pagico' do
  version '9.2.20200418'
  sha256 '5ca8123a2fea674a4b13e1fcd215016b687d35fecf2cbb894a14b6fe43a07b90'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
