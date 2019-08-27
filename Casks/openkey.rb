cask 'openkey' do
  version '1.3.1'
  sha256 '04b791da2f8551a3dfb5b694eff94ea61c161c4ed73f9bf3891e6ecb792bab15'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
