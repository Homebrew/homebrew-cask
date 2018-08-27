cask 'bluegriffon' do
  version '3.0.1'
  sha256 'b1fd87e24890d9d7f227da4051e384e327e418c80112f94fe376985697f7f1d9'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org/'

  depends_on macos: '>= :mountain_lion'

  app 'BlueGriffon.app'
end
