cask "sidequest" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.2.3"
  sha256 arm:          "ecce94e6902dec3e22a8fc977da10b0c7961d689064abb828e88d86c3e98e745",
         intel:        "3a05584f9828ba2172216e44ce687bb1f87a0b3aa834c121f03b63f5ead600ca",
         x86_64_linux: "163a8f8897c7f3f3fc54db7ce3dac545932f9ec093daf213322bce947fc64ebb"

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
