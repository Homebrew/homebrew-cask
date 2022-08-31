cask "remote-desktop-manager" do
  version "2022.2.12.0"
  sha256 "a5af1dc75eba10864bf7b5f2f70c79cd7d6e9e5a4249898f2ec5535f16ad8390"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg",
      verified: "devolutions.net/"
  name "Remote Desktop Manager"
  desc "Centralizes all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml"
    strategy :sparkle
  end

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
