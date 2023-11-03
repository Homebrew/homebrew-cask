cask "remote-desktop-manager-free" do
  version "2023.3.6.3"
  sha256 "e16436e8c061f691ce7752d487bca7702ca85cc67d5b4399c580e7153721d59f"
 
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
