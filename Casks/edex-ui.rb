cask "edex-ui" do
  version "2.2.3"
  sha256 "48761c8cc60bd5261bde4ec72846ca3130d12e25359acc62bdec0f8f4dc41e18"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI-macOS.dmg"
  appcast "https://github.com/GitSquared/edex-ui/releases.atom"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"
end
