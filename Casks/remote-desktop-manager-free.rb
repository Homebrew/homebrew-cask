cask "remote-desktop-manager-free" do
  version "2022.2.16.0"
  sha256 "26545b52627f780fc3618f62649ff58589adfd1409d72f5b84f50be11b218879"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg",
      verified: "devolutions.net/"
  name "Remote Desktop Manager Free"
  desc "Centralizes all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Remote Desktop Manager Free.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager.free",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.free",
  ]
end
