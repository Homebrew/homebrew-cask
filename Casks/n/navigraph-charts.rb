cask "navigraph-charts" do
  version "8.33.1"
  sha256 "2efbafd94ca08ed9ed9462b69bec920d6f8f2f858e9a0c9f3a43691ef0ca1028"

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
