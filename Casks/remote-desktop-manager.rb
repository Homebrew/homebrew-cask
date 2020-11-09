cask "remote-desktop-manager" do
  version "2020.3.1.0"
  sha256 "83d82365e090c2450fbec7aed1d6f9db1e8790b54c990ab18491871882864e93"

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
