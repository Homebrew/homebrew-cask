cask "remote-desktop-manager-free" do
  version "2022.2.11.0"
  sha256 "cd95e5298862f23f9692468695291dd6ac6d919966c098108cc5b24ddc56d5a9"

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
