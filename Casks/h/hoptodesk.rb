cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.50"
  sha256 arm:          "422a1fb21ca587edcac4956b6e4638d8b5d1a5fcbc32657668c019dd0ec426fa",
         intel:        "422a1fb21ca587edcac4956b6e4638d8b5d1a5fcbc32657668c019dd0ec426fa",
         x86_64_linux: "f0be8dd53173fa2672dbd1f213f2d2c4fe414746a15ee539a0048d8392d5e579"

  on_macos do
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
  on_linux do
    app_image "hoptodesk.AppImage", target: "HopToDesk.AppImage"
  end

  url "https://dl.hoptodesk.com/releases/#{version}/#{os}.#{url_end}"
  name "HopToDesk"
  desc "Remote desktop and remote support tool with end-to-end encryption"
  homepage "https://www.hoptodesk.com/"

  livecheck do
    url "https://dl.hoptodesk.com/latest.json"
    strategy :json do |json|
      json.dig("files", "HopToDesk.dmg", "version")
    end
  end
end
