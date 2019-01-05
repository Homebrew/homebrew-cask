cask 'pagico' do
  version '8.16.2362'
  sha256 'c762e05e173198b56b654819c2c9f764a6d8ab63dbac3fc01e9bbc8c984f9213'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
