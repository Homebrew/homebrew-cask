cask "jump" do
  version "9.0.91,90091"
  sha256 "5b0a0498273f8c8608e3be7f8791e6bc153e1d6d0c0089f062fa1dcb21bb447f"

  url "https://mirror.jumpdesktop.com/downloads/jdm/JumpDesktopMac-#{version.csv.second}.zip",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end
