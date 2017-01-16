cask 'bluegriffon' do
  version '2.1.2'
  sha256 '8a7a0586c8f4ae002886c3c80f4ddbff65648429c56c8e45d4d08dca9ac85b66'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac.dmg"
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org/'

  depends_on macos: '>= :mountain_lion'

  app 'BlueGriffon.app'
end
