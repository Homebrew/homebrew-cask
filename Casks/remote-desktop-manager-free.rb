cask "remote-desktop-manager-free" do
  version "2020.3.3.0"
  sha256 "57018fb8f1535f19b02b19727509430460a0bf41b8172bf4296ebf2edb5b2a27"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg",
      verified: "devolutions.net/"
  appcast "https://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml"
  name "Remote Desktop Manager Free"
  homepage "https://mac.remotedesktopmanager.com/"

  app "Remote Desktop Manager Free.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager.free",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.free",
  ]
end
