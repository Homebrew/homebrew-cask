cask "sidequest" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.3.1"
  sha256 arm:          "af4c9c7050d722b3d09d4ffe198cae746475b37432c3c207890e3c2bc7f29276",
         intel:        "bf4bee89d52321ab1495a4d6e3f701f3ca4ed529f4471e3d0f38c936b6175939",
         x86_64_linux: "c311bc45a0588992aff5de5be8f5c901b554305b003fbbec74b789ccbc4abd26"

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
