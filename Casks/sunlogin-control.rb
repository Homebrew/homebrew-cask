cask 'sunlogin-control' do
  version '3.0'
  sha256 '87FF12A9192ED809C2C8668E63CF44B1101544E52F43E8CC912ED2B20ACF077F'

  url "http://download.oray.com/sunlogin/mac/SunloginControl#{version}.dmg"
  name 'SunloginControl'
  name '向日葵控制端'
  homepage 'https://sunlogin.oray.com/'

  app 'SunloginControl.app'
end
