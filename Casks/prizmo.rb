cask 'prizmo' do
  version '4.0'
  sha256 '28a38730c19be6a9c7362279927bc7dec3fe717a5d2ebf834309d205a917b974'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
