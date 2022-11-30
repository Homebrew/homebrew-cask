cask "remote-desktop-manager" do
  version "2022.3.9.0"
  sha256 "c605b544b0a7078da8d376fcc884475767d7a647035e31fa6d66122a0e914c59"

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
