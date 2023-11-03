cask "remote-desktop-manager-free" do
  version "2023.3.7.0"
  sha256 "0159f5721c9612347c616629e4ad5190e3449cd378ff1beabb7019761fc53cce"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg",
      verified: "devolutions.net/"
  name "Remote Desktop Manager Free"
  desc "Centralizes all remote connections on a single platform"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://devolutions.net/products.htm"
    regex(/RDMMacFreeWeb\.Version=(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "Remote Desktop Manager Free.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager.free",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.free",
  ]
end
