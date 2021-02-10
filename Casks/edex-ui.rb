cask "edex-ui" do
  version "2.2.5"
  sha256 "471def5c79a7620f9966e71a7026bcc8ba543ca5747bb4a7436e8e45c2a7cd74"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI-macOS.dmg"
  appcast "https://github.com/GitSquared/edex-ui/releases.atom"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"
end
