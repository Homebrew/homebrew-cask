cask "remote-desktop-manager" do
  version "2020.3.2.0"
  sha256 "a8f03733cf15ee0c4b4a6605b660632090a50eadb6d5a71e637caf5dcf17c54a"

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
