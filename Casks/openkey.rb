cask 'openkey' do
  version '2.0.1'
  sha256 '8c27a389814f4a53ca66c1e798970253f58d8c5a217539748f3e67b6cf6bac59'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
