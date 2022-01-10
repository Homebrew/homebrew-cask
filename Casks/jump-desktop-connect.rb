cask "jump-desktop-connect" do
  version "4.1.3"
  sha256 :no_check

  url "https://mirror.jumpdesktop.com/downloads/connect/JumpDesktopConnect.dmg"
  name "Jump Desktop Connect"
  desc "High Performance Desktop Sharing using a fraction of bandwidth of RDP/VNC"
  homepage "https://jumpdesktop.com/"

  pkg ".jdc.sparkle_guided.pkg"

  uninstall do
    launchctl [
      "com.p5sys.jump.connect.agent",
      "com.p5sys.jump.connect.service"
    ],
    pkgutil: "com.p5sys.jump.connect"
  end
end
