cask 'openkey' do
  version '1.6'
  sha256 '663941a403386c1216bfd2dfff206e43ed7b497edec283598e8fa781acbac3b5'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
