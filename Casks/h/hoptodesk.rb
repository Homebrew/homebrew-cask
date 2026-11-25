cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.90"
  sha256 arm:          "b6db7aa3f90e8288fa28416ebf2befe5d091c4d02f6dc68aaee79b4efb97dabf",
         intel:        "b6db7aa3f90e8288fa28416ebf2befe5d091c4d02f6dc68aaee79b4efb97dabf",
         x86_64_linux: "6c1c398f956f868d6721d34086de6c151f24871e8424b8fbdddfd98a84c4ea25"

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
