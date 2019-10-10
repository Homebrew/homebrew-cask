cask 'bluegriffon' do
  version '3.1'
  sha256 '651f0c089adfbb988870b09f0101ca021de218af4bb138011f196c4630312412'

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  appcast 'http://bluegriffon.org/freshmeat/?C=M;O=D'
  name 'BlueGriffon'
  homepage 'http://bluegriffon.org/'

  depends_on macos: '>= :high_sierra'

  app 'BlueGriffon.app'
end
