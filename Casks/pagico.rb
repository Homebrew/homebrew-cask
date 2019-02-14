cask 'pagico' do
  version '8.16.2375'
  sha256 '376e17a6238c175a145a9926d43a6a76802857517937ea1f73776781062b4ba8'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
