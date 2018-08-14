cask 'prizmo' do
  version '3.5.3'
  sha256 '48d38684bed1823f2fa49930a6fa6f8d86d002f58d69de643f286c97f6176d75'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
