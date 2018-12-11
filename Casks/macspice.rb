cask 'macspice' do
  version '3.1.21'
  sha256 '17ac2d9dca93c6da5caa4894abf42a8a4c04aae65aa36855ac842f42f204c2b2'

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'https://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
