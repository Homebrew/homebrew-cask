cask 'openkey' do
  version '1.2.2'
  sha256 'b1c8e688eba87713a97a52f17cd1a980caf4930f64c077b0fa787e910369d6a8'

  url "https://github.com/tuyenvm/OpenKey/releases/download/v#{version}/OpenKey1.2RC2.dmg"
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
