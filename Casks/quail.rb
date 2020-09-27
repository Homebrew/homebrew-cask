cask "quail" do
  version "2.0.1"
  sha256 "ea54eac6a637768f83d623a1c686005fb6f963a46728f3a9f2eb3fc8bd08d739"

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
