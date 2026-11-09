cask "hoptodesk" do
  os macos: "HopToDesk", linux: "hoptodesk"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.46.82"
  sha256 arm:          "26f3e5dda8143cf15cc3de51bcd245b83e32c6a0eed9bafc46539d8648f3dbfc",
         intel:        "26f3e5dda8143cf15cc3de51bcd245b83e32c6a0eed9bafc46539d8648f3dbfc",
         x86_64_linux: "073c411ccd0ea7908f4397ad5bb9cf8f40b4e1ade2567042f5261fe5bb2792fe"

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
