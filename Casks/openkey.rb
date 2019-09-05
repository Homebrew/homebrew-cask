cask 'openkey' do
  version '1.4'
  sha256 'ef63e5a9bf533e20e27e20e805fc9eb3e87149786f81aabbc68c6f1237daa329'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
