cask 'pagico' do
  version '8.17,2382'
  sha256 'bea18148ddbb7f49e81b704d781bba2c2f7a623c1b979d07b7aff9d531b890f0'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
