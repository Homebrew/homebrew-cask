cask '3cxphone' do
  version '15'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://downloads.3cx.com/downloads/3CXPhoneForMac#{version}.dmg"
  name '3CXPhone'
  homepage 'https://www.3cx.com/'

  app '3CXPhone.app'
end
