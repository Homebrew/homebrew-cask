cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.60"
  sha256 arm:          "9bcdaac3e3b38f22f18e5efa2a697ddc78564d57cc2aca04ee704efd9aed7ee2",
         intel:        "9bcdaac3e3b38f22f18e5efa2a697ddc78564d57cc2aca04ee704efd9aed7ee2",
         x86_64_linux: "14e20e8a0bae436ce9889936ebbd5436fcb8635b5b9823f63832634bd1df0506"

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
