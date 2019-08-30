cask 'openkey' do
  version '1.3.2'
  sha256 '54c7546360a83ba4ee0e87d77b21a099997b1156c90d75e470f4a25bda3fd136'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
