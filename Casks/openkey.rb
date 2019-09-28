cask 'openkey' do
  version '1.6.2'
  sha256 'ceb284ed49db768885df1b10995bbfec2a4c4f08846cff24ede21ddb165f3317'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
