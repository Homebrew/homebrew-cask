cask 'openkey' do
  version '1.5'
  sha256 '375443d3990fa2bb11f433fb3d13e02c108c4e51398c391b5e505b9306f12a7e'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
