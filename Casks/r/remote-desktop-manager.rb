cask "remote-desktop-manager" do
  version "2026.3.1.2"
  sha256 "03c9e9bec7e28add3efdfd339f922f88d825cfef775d536e1cb0b6a763190032"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name "Remote Desktop Manager"
  desc "Centralises all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

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
