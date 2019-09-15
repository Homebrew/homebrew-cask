cask 'openkey' do
  version '1.4.1'
  sha256 'ca1a7169f4446e24d5d201e75dccef9c5acd2d6186aa6e98d980cacabcad274f'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
