cask "rewind" do
  version "15187.1,04482a1,20231221"
  sha256  "b0fc1c58d7c6845e6e665202a889da8c126d7c2607ea680f04bf7b65a7f58aa1"

  url "https://updates.rewind.ai/builds/main/b#{version.csv.first}-main-#{version.csv.second}.zip"
  name "Rewind"
  desc "Record and search your screen and audio"
  homepage "https://www.rewind.ai/"

  livecheck do
    url "https://updates.rewind.ai/appcasts/main.xml"
    strategy :sparkle do |item|
      # Throttle updates to one every 3 days.
      next version if DateTime.parse(version.csv.third) + 3 > Date.today

      "#{item.version},#{item.url.match(/[._-](\w+)\.zip/i)[1]},#{item.pub_date.strftime("%Y%m%d")}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Rewind.app"

  uninstall quit: "com.memoryvault.MemoryVault"

  zap trash: [
    "~/Documents/rewind_logs_*.zip",
    "~/Library/Application Support/com.memoryvault.MemoryVault",
    "~/Library/Caches/com.memoryvault.MemoryVault",
    "~/Library/HTTPStorages/com.memoryvault.MemoryVault",
    "~/Library/LaunchAgents/com.rewind.Rewind.plist",
    "~/Library/Logs/DiagnosticReports/Rewind_*.diag",
    "~/Library/Logs/Rewind",
    "~/Library/Preferences/com.memoryvault.MemoryVault.plist",
    "~/Library/WebKit/com.memoryvault.MemoryVault",
  ]
end
