cask "remote-desktop-manager" do
  version "2026.1.9.5"
  sha256 "324b4f2986d807318fe01e2b81aeafe066a6be9cd2710c0e169c4727e1aff7c3"

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
