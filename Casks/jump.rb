cask "jump" do
  version "8.7.12,80712"
  sha256 "527834d827afe1f92af51b36918cdf4dd7ef47ca1a4a9a21f93814d2d8a6f956"

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
