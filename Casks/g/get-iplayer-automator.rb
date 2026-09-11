cask "get-iplayer-automator" do
  version "1.29.6,202608131913"
  sha256 "8de169c394d87a84496fff180d535a11b2c1629d231180712759ff903627efe0"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.csv.first}/Get.iPlayer.Automator.v#{version.csv.first}.b#{version.csv.second}.zip"
  name "Get iPlayer Automator"
  desc "Download and watch BBC and ITV shows"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  livecheck do
    url :url
    regex(/^Get\.?iPlayer\.?Automator\.?v?(\d+(?:\.\d+)*)\.b(\d+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on :macos

  app "Get iPlayer Automator.app"

  uninstall quit: "com.ascoware.get-iplayer-automator"

  zap trash: [
    "~/Library/Application Scripts/group.com.ascoware.get-iplayer-automator",
    "~/Library/Application Support/Get iPlayer Automator",
    "~/Library/Caches/com.ascoware.get-iplayer-automator",
    "~/Library/Caches/com.ascoware.getiPlayerAutomator",
    "~/Library/Group Containers/group.com.ascoware.get-iplayer-automator",
    "~/Library/HTTPStorages/com.ascoware.get-iplayer-automator",
    "~/Library/HTTPStorages/com.ascoware.getiPlayerAutomator",
    "~/Library/Logs/Get iPlayer Automator",
    "~/Library/Preferences/com.ascoware.get-iplayer-automator.plist",
    "~/Library/Preferences/com.ascoware.getiPlayerAutomator.plist",
    "~/Library/Saved Application State/com.ascoware.getiPlayerAutomator.savedState",
    "~/Library/WebKit/com.ascoware.getiPlayerAutomator",
  ]
end
