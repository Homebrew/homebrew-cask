cask "gk6-plus" do
  version "1.0.0.1"
  sha256 "c896df76e567ba842083042e4ed14d6b14efc7f5ba8988247d4cbc9b2e609aee"

  url "https://cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/90/GK6x%20Mac%20App-#{version}.dmg",
      verified: "cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/"
  name "GK6+"
  desc "Keyboard utility for GK6 series PCB/Keyboards"
  homepage "http://www.jikedingzhi.com/downloadlist?driverID=90"

  app "GK6+.app"
end
