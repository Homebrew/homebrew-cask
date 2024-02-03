cask "sideserver" do
  version "1.0.6"
  sha256 :no_check

  url "https://github.com/SideStore/SideServer-macOS/releases/download/v1.0.6/SideServer.dmg",
      verified: "github.com/SideStore/SideServer-macOS/"
  name "SideServer"
  desc "Alternative iOS app store for seamless sideloading"
  homepage "https://sidestore.io/"

  livecheck do
    url :stable
    strategy :git
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SideServer.app"

  uninstall launchctl: "io.SideStore.SideServer-LaunchAtLoginHelper",
            quit:      "io.SideStore.SideServer",
            delete:    "/Applications/SideServer.app"

  zap trash: [
    "~/Library/Application Scripts/io.SideStore.SideServer-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/io.SideStore.SideServer",
    "~/Library/Preferences/io.SideStore.SideServer.plist",
  ]
end
