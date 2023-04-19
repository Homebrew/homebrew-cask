cask "rewind" do
  version "1.0041,20230419"
  sha256 :no_check

  url "https://download.rewind.ai/Rewind.dmg"
  name "Rewind"
  desc "Record and search your screen and audio"
  homepage "https://www.rewind.ai/"

  livecheck do
    url "https://updates.rewind.ai/appcasts/main.xml"
    strategy :xml do |xml|
      # Throttle updates to one every 3 days.
      next version if DateTime.parse(version.csv.second) + 3 > Date.today

      item = xml.get_elements("//item")[0]
      version = item.elements["sparkle:shortVersionString"].text
      date = DateTime.parse(item.elements["pubDate"].text).strftime("%Y%m%d")

      "#{version},#{date}"
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
