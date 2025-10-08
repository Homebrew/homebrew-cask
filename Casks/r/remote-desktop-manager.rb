cask "remote-desktop-manager" do
  version "2025.3.6.7"
  sha256 "4b6713f6be027396a43e68b5d33b457ff9f161c1efaab32481eb1705e6f513b8"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg",
      verified: "cdn.devolutions.net/download/Mac/"
  name "Remote Desktop Manager"
  desc "Centralises all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Remote Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager",
    "~/Library/Application Support/Remote Desktop Manager",
    "~/Library/Caches/com.devolutions.remotedesktopmanager",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.plist",
    "~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState",
  ]
end
