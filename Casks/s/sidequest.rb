cask "sidequest" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.4.2"
  sha256 arm:          "6eeb811aa36db6948e9f214c651ad6204255caa8347dc5f5c9175cd8bff2e315",
         intel:        "80bc0884af3c9dc474d61be0f0c2401fc8a103603569edd640810a88dcb3cf40",
         x86_64_linux: "a5a66bd8af1ff2778a5a4137174ab3b93d615d7e1c180377c6690365fd7d3c11"

  on_macos do
    depends_on macos: :monterey

    app "SideQuest.app"

    uninstall launchctl: "com.sidequestvr.app.ShipIt"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sidequestvr.app.sfl*",
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
