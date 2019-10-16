cask 'openkey' do
  version '2.0.1'
  sha256 'e59bed556c6a9068ba406d951566e4fea100e8b067dddd52cab69235e0133af2'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
