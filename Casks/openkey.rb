cask 'openkey' do
  version '2.0.1'
  sha256 'b1521d7782f70dd67810e02f74ec32feaffb43fc71f2b54f5f58d45aec647daf'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
