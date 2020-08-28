cask "remote-desktop-manager" do
  version "2020.2.4.0"
  sha256 "e5cceb2f2825bd6ea5bd8fede16c70c76eaa453f7424688eeff417d1f1531fdf"

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
