cask "sidequest" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.4.1"
  sha256 arm:          "512b5f75ef90ae6cc9972f479585715c21d52de4e2985ffc4cc28173652a1faf",
         intel:        "0725f35208e76f702a34561e2adb217dfde37c50f33a1169afc570d3faf58c08",
         x86_64_linux: "5f253bd522c421cea3eba441f7064af9a40cdd43f5575f0318fd89e818f21620"

  on_macos do
    depends_on macos: :monterey

    app "SideQuest.app"

    uninstall launchctl: "com.sidequestvr.app.ShipIt"

    zap trash: [
      "~/Library/Application Support/SideQuest",
      "~/Library/Application Support/SideQuestDesktop",
      "~/Library/Caches/com.sidequestvr.app*",
      "~/Library/Caches/sidequest-desktop-updater",
      "~/Library/HTTPStorages/com.sidequestvr.app",
      "~/Library/Preferences/ByHost/com.sidequestvr.app.ShipIt.*.plist",
      "~/Library/Preferences/com.sidequestvr.app.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "SideQuest-#{version}.AppImage", target: "SideQuest.AppImage"

    zap trash: [
      "~/.cache/sidequest-desktop-updater",
      "~/.config/SideQuest",
    ]
  end

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.#{os}"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"
end
