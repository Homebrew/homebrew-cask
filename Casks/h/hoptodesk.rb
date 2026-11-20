cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.88"
  sha256 arm:          "4c4b0e67fcab0c67d993b3a528c43615d1ef9e939259c665926c3f7c08b7d3b4",
         intel:        "4c4b0e67fcab0c67d993b3a528c43615d1ef9e939259c665926c3f7c08b7d3b4",
         x86_64_linux: "153b6e3a3dc5c47db28fee44e4d31ae6174939c4911b1ea44b0e63d22863cccd"

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

    zap trash: [
          "~/.config/hoptodesk",
          "~/.local/share/logs/HopToDesk",
        ],
        rmdir: "~/.local/share/logs"
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
