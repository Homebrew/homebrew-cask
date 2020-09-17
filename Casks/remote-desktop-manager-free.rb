cask "remote-desktop-manager-free" do
  version "2020.2.6.0"
  sha256 "f114219f0bea4a4d2639f4cb9994b5310d24f72a4ec2fc975fbdfd2c089ed949"

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
