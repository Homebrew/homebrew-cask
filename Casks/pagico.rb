cask 'pagico' do
  version '8.17.2379'
  sha256 'b0639118bf30129e9d11277ac596bc2f50c5192ff05c9a2b78ba849ae8a87678'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
