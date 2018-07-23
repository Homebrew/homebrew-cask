cask 'macspice' do
  version '3.1.19'
  sha256 '43b6c57074cb0d59b97c2c520580c42b5d18524d34371e2f026968e4bca8920d'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
