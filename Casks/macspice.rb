cask 'macspice' do
  version '3.1.23'
  sha256 '2c94d76fb0972bc6484683f95ed59a5a75d68193ae532784b4bd437535d885be'

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'https://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
