cask 'macspice' do
  version '3.1.21'
  sha256 'cee7530d0f442d9c9d27063efd1c9c009edef82c9a5c4c39df9cf364b285d129'

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'https://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
