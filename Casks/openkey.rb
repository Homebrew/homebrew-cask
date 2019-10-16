cask 'openkey' do
  version '2.0.1'
  sha256 'f84901f6103b757b0c3eec7ac4a3d1ae96bde521be9fbcf60c7d7d6b9af9e9c9'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
