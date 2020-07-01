cask 'pagico' do
  version '9.4.20200701'
  sha256 'd6347035f7e431c13ecb01e95c8390932ff3cf7f009dc4929f6b9496de4cf2de'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
