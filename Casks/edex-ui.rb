cask "edex-ui" do
  version "2.2.4"
  sha256 "14aea791cac8c0360191ba174de1f474e6cb6af53f6b6c52f6745f7e9cbc01d1"

  url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI-macOS.dmg"
  appcast "https://github.com/GitSquared/edex-ui/releases.atom"
  name "eDEX-UI"
  homepage "https://github.com/GitSquared/edex-ui"

  app "eDEX-UI.app"
end
