cask 'macspice' do
  version '3.1.15'
  sha256 'c12699e694d415ef7711e45d3f348e84202188014e679d505a2d5f126c84f77c'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: '0d57f4a640d1d4991aab10d13a744be9d2afcec1b9ee1621ea5668f4964eb6a9'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'

  app 'MacSpice.app'
end
