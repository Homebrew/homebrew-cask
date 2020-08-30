cask "quail" do
  version "1.3.1"
  sha256 "84417b6469d4dee0b998676e528016615483c00dd2e36591ad875d7b221f3753"

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-#{version}.dmg"
  appcast "https://github.com/1000ch/quail/releases.atom"
  name "Quail"
  homepage "https://github.com/1000ch/quail"

  app "Quail.app"

  zap trash: [
    "~/Library/Application Support/Quail",
    "~/Library/Caches/net.1000ch.quail",
    "~/Library/Caches/net.1000ch.quail.ShipIt",
    "~/Library/Preferences/net.1000ch.quail.helper.plist",
    "~/Library/Preferences/net.1000ch.quail.plist",
    "~/Library/Saved Application State/net.1000ch.quail.savedState",
  ]
end
