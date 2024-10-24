cask "remote-desktop-manager" do
  version "2024.3.5.1"
  sha256 "44306eefd8bbb047ff659a65583dfff2e3f9ba9809317b57548d1dc2688c9e66"

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
  depends_on macos: ">= :sierra"

  app "Remote Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager",
    "~/Library/Application Support/Remote Desktop Manager",
    "~/Library/Caches/com.devolutions.remotedesktopmanager",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.plist",
    "~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState",
  ]
end
