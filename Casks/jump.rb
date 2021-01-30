cask "jump" do
  version "8.7.14,80714"
  sha256 "1edbe154752bba72ea0e9350011d4d4a9560778e7fbd68ccff6a0b75ec18e5c7"

  url "https://dl.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.before_comma}.zip"
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
