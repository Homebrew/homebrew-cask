cask "remote-desktop-manager-free" do
  version "2020.2.3.0"
  sha256 "6313b94d6de5f9c2b9a3ddf925b692b4ac37a6263281882de6254d4c89b2552b"

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
