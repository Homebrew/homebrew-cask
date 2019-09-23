cask 'openkey' do
  version '1.5.2'
  sha256 '72abb73b1e14e02b93f0c7e274ebc94ef6ea377e1f1ac8ce247fd98963521dfb'

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast 'https://github.com/tuyenvm/OpenKey/releases.atom'
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
