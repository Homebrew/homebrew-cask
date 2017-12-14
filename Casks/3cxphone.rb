cask '3cxphone' do
  version '15.1.1'
  sha256 '8aa0f85a61f618ec257065f5b70ed0b4e6d222e1c7bb385b65f15402a4fd22c5'

  url "https://downloads.3cx.com/downloads/3CXPhoneForMac#{version.major}.dmg"
  name '3CXPhone'
  homepage 'https://www.3cx.com/'

  app '3CXPhone.app'
end
