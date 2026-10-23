cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.74"
  sha256 arm:          "ef023eb30fd6bcce696a57d834e1af049022f89094322c7323524715ec3f6bca",
         intel:        "ef023eb30fd6bcce696a57d834e1af049022f89094322c7323524715ec3f6bca",
         x86_64_linux: "2c9d0bb0c1e538715eb2f6d97551810bbf6627de52182b3c9aec1ce68d242a13"

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
    depends_on arch: :x86_64

    app_image "hoptodesk.AppImage", target: "HopToDesk.AppImage"
  end

  url "https://dl.hoptodesk.com/releases/#{version}/#{os}.#{url_end}"
  name "HopToDesk"
  desc "Remote desktop and remote support tool with end-to-end encryption"
  homepage "https://www.hoptodesk.com/"

  livecheck do
    url "https://dl.hoptodesk.com/latest.json"
    strategy :json do |json|
      json.dig("files", "#{os}.#{url_end}", "version")
    end
  end
end
