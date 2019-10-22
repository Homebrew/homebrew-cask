cask 'prizmo' do
  version '3.7.2'
  sha256 '6f811c4eb7b2f08f212749b615c3ad2587a610278fb5ca761d43710ecf962d6c'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
