cask "hoptodesk" do
  version "1.46.50"
  sha256 "422a1fb21ca587edcac4956b6e4638d8b5d1a5fcbc32657668c019dd0ec426fa"

  url "https://dl.hoptodesk.com/releases/#{version}/HopToDesk.dmg"
  name "HopToDesk"
  desc "Remote desktop and remote support tool with end-to-end encryption"
  homepage "https://www.hoptodesk.com/"

  livecheck do
    url "https://dl.hoptodesk.com/latest.json"
    strategy :json do |json|
      json.dig("files", "HopToDesk.dmg", "version")
    end
  end

  depends_on :macos

  app "HopToDesk.app"

  uninstall launchctl: [
              "com.hoptodesk.HopToDesk_server",
              "com.hoptodesk.HopToDesk_service",
            ],
            quit:      "com.hoptodesk.hoptodesk"

  zap trash: [
    "/Library/LaunchAgents/com.hoptodesk.HopToDesk_server.plist",
    "/Library/LaunchDaemons/com.hoptodesk.HopToDesk_service.plist",
    "~/Library/Logs/HopToDesk",
    "~/Library/Preferences/com.hoptodesk.HopToDesk",
    "~/Library/Saved Application State/com.hoptodesk.hoptodesk.savedState",
  ]
end
