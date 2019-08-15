cask 'openkey' do
  version '1.2.2'
  sha256 :no_check

  url "https://github.com/tuyenvm/OpenKey/releases/download/v#{version}/OpenKey1.2RC2.dmg"
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
