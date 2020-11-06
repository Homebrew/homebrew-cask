cask "remote-desktop-manager-free" do
  version "2020.3.1.0"
  sha256 "505dce3f9780223a26389fc313a588a56d45b545dcee3183f48b423cd0228917"

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
