cask "remote-desktop-manager" do
  version "2026.3.3.1"
  sha256 "2787c0783f5aedaf55997ff20826e9277b68f08bb7e216a9b14cd58114068d86"

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
