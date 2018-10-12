cask 'prizmo' do
  version '3.6'
  sha256 'b47547cd1e4030ae3395e034694bfedef519524e1b01f2a835165160254a3aff'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
