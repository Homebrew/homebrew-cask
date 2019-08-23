cask 'openkey' do
  version '1.2.3'
  sha256 '803e1f96232b40740a43c235748dea6ac292473b777b4b4bcb7ba8198af416fb'

  url "https://github.com/tuyenvm/OpenKey/releases/download/v#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
