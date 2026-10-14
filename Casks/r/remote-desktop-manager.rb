cask "remote-desktop-manager" do
  version "2026.3.2.2"
  sha256 "dfb00dae31ca2e00fe979b2fd4138f8ec69c0be780eba1da7d51aab280d4e90e"

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
