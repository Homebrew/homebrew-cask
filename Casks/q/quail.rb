cask "quail" do
  version "2.4.0"
  sha256 "481b42f6a2c9ffd94c450f28e49692e95030d11cf20c2823732b117bac1e8992"

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-#{version}.dmg"
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

  caveats do
    requires_rosetta
  end
end
