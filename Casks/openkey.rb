cask 'openkey' do
  version '1.2.4'
  sha256 '0868ad9885af23868cd63858db963d542c8f489907ed55ff920b794e42ba486a'

  url "https://github.com/tuyenvm/OpenKey/releases/download/v#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
