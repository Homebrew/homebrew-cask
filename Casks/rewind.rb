cask "rewind" do
  version "10791.1,c6afb41,20230517"
  sha256  "72bedaec48e6b3788488f64bb77382cbc5fd3431c63db381d571c40c1f06fc00"

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
  depends_on arch:  :arm64,
             macos: ">= :monterey"

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
