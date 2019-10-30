cask 'openkey' do
  version '2.0.2'
  sha256 'd5f30504dd98a701f1b84473e46fd09c4b32a1a8158ac69916cead6ca636d243'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
