cask "navigraph-charts" do
  version "8.37.1"
  sha256 "169d3aaea6db81dd0813a219fbb5c0bbe7127dbd78b3bfb7b3a9137bde9a062b"

  url "https://download.navigraph.com/software/charts/mac/Navigraph%20Charts%20#{version}.dmg"
  name "Navigraph Charts"
  desc "Access professional and updated Jeppesen charts for flight simulation"
  homepage "https://navigraph.com/"

  livecheck do
    url "https://download.navigraph.com/software/charts/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Navigraph Charts.app"

  zap trash: [
    "~/Library/Application Support/Navigraph Charts",
    "~/Library/Caches/com.navigraph.charts.desktop",
    "~/Library/Caches/com.navigraph.charts.desktop.ShipIt",
    "~/Library/HTTPStorages/com.navigraph.charts.desktop",
    "~/Library/Logs/Navigraph Charts",
    "~/Library/Preferences/ByHost/com.navigraph.charts.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.navigraph.charts.desktop.plist",
    "~/Library/Saved Application State/com.navigraph.charts.desktop.savedState",
  ]
end
