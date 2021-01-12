cask "remote-desktop-manager-free" do
  version "2020.3.4.0"
  sha256 "619ebf34b3b9d28d3a965b8b7af2a499be234600d3107263c49837352c77d6f9"

  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg",
      verified: "devolutions.net/"
  name "Remote Desktop Manager Free"
  homepage "https://mac.remotedesktopmanager.com/"

  livecheck do
    url "https://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml"
    strategy :sparkle
  end

  app "Remote Desktop Manager Free.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager.free",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.free",
  ]
end
