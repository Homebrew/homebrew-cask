cask "remote-desktop-manager" do
  version "2026.3.3.0"
  sha256 "bb39ccb80b6f214c40727f878feb46b1eb3de468e8f7fe826d072609b479dfb1"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name "Remote Desktop Manager"
  desc "Centralises all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Remote Desktop Manager.app"

  uninstall quit: "com.devolutions.remotedesktopmanager"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager",
    "~/Library/Application Support/Remote Desktop Manager",
    "~/Library/Caches/com.devolutions.remotedesktopmanager",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.plist",
    "~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState",
    "~/Library/WebKit/com.devolutions.remotedesktopmanager",
  ]
end
