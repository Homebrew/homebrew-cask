cask "quail" do
  version "2.0.0"
  sha256 "266f48ae2612c6e40f52542c81ae99eb29a68b3cd8514e1bd8fa63929847fed2"

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-#{version}.dmg"
  appcast "https://github.com/1000ch/quail/releases.atom"
  name "Quail"
  desc "Unofficial but officially accepted esa app"
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
