cask 'openkey' do
  version '1.6.5'
  sha256 '97914de90ee836f2ca669c49d870229ce820398007da00e1bb0dc80668e6402e'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
