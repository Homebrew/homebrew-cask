cask "remote-desktop-manager" do
  version "2020.3.3.0"
  sha256 "758ba930293764ddfc571ad5a24970c9e508c1347fd44e9c0c996e7ae6598390"

  # devolutions.net/ was verified as official when first introduced to the cask
  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast "https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml"
  name "Remote Desktop Manager"
  homepage "https://mac.remotedesktopmanager.com/"

  app "Remote Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/Remote Desktop Manager",
    "~/Library/Application Support/com.devolutions.remotedesktopmanager",
    "~/Library/Caches/com.devolutions.remotedesktopmanager",
    "~/Library/Preferences/com.devolutions.remotedesktopmanager.plist",
    "~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState",
  ]
end
