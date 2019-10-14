cask 'bluegriffon' do
  version '3.0.1'
  sha256 'c62f0af91ee7544c3f83f7a598638dad5e344ef6ce743e18b7d337a37e359580'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  appcast 'http://bluegriffon.org/freshmeat/?C=M;O=D'
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org/'

  app 'BlueGriffon.app'
end
