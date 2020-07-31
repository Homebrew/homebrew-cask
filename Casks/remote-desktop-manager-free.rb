cask "remote-desktop-manager-free" do
  version "2020.2.2.0"
  sha256 "d586a98e635f7548da2b021b641487791359f398080522d5a43296072730f922"

  # devolutions.net/ was verified as official when first introduced to the cask
  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast "https://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml"
  name "Remote Desktop Manager Free"
  homepage "https://mac.remotedesktopmanager.com/"

  app "Remote Desktop Manager Free.app"

  zap trash: [
    "~/Library/Application Support/com.devolutions.remotedesktopmanager.free",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.free",
  ]
end
