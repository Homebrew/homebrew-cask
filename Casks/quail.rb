cask "quail" do
  version "2.1.0"
  sha256 "4c4f31ae51f2ae30d5a25eaed006409bfcefbb9c16b3770c1023483bc3457081"

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
