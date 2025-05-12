cask "get-iplayer-automator" do
  version "1.26.2,20250511001"
  sha256 "d85388d09ce497e2b1cec25ce44e440d1bec917767f64d1a637903e1c3256b44"

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

  depends_on macos: ">= :high_sierra"

  app "Get iPlayer Automator.app"

  zap trash: [
    "~/Library/Application Support/Get iPlayer Automator",
    "~/Library/Caches/com.ascoware.getiPlayerAutomator",
    "~/Library/HTTPStorages/com.ascoware.getiPlayerAutomator",
    "~/Library/Logs/Get iPlayer Automator",
    "~/Library/Preferences/com.ascoware.getiPlayerAutomator.plist",
    "~/Library/Saved Application State/com.ascoware.getiPlayerAutomator.savedState",
    "~/Library/WebKit/com.ascoware.getiPlayerAutomator",
  ]
end
