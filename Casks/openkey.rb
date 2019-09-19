cask 'openkey' do
  version '1.5.1'
  sha256 'e9731f72f20af296a6575e390a31cd1292b5bc537af2fc0b14b4b1f9d8c529f1'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
