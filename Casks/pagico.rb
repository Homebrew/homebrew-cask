cask 'pagico' do
  version '9.1.20200219'
  sha256 '2ce4300ab5f24367e2196b7f6eccca0fd3c175e227b0ab026cb688e28ef64118'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
