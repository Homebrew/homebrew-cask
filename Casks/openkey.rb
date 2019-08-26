cask 'openkey' do
  version '1.2.5'
  sha256 '70c951d47d95d7fb8d339a3276b5d2061a9e21a572fb271c9abfd805f5119771'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
