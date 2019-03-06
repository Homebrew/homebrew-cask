cask 'pagico' do
  version '8.17.2378'
  sha256 '83e2b63bc4da4fee2968e7f56fc893fab224acccc316eb4533b83c3bb5fb6df8'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
