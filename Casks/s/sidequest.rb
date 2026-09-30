cask "sidequest" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.3.0"
  sha256 arm:          "7e80c8891458a3970e5c109e844f44cd13d605a609c45e9eb91040268d855ad2",
         intel:        "369c3ebab17c60bbc105a2617b0af41254d1ccfbd3727df34d0e8a8767e2f833",
         x86_64_linux: "af02633b1653bd200ab9e7f3db5fefb43a9d2c37b01a5a118fd366192cd7bae9"

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
