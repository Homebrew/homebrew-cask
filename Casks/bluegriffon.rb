cask 'bluegriffon' do
  version '2.3.1'
  sha256 'ceebeee4d83cc36e57e63d0f66dadb6c061d3fccfdbb6ed3e1c5355ff68facd2'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac.dmg"
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org/'

  depends_on macos: '>= :mountain_lion'

  app 'BlueGriffon.app'
end
