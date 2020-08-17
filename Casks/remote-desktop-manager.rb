cask "remote-desktop-manager" do
  version "2020.2.3.0"
  sha256 "4ddd3fbb320575759d40c353beab2fb17f6793c1919db97dbd233221d8cbfa60"

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
