cask "sunloginclient" do
  version "11.0.2.41962"
  sha256 "f2ca66a21fa3d09550ac65b89957ad35836403211c4456adbcd81d8bc147585f"

  url "https://down.oray.com/sunlogin/mac/SunloginClient_#{version}.dmg"
  name "Sunlogin 11"
  name "向日葵 11"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=89"
    strategy :header_match
    regex(/SunloginClient[._-](\d+(?:\.\d+)*)\.dmg/i)
  end

  pkg "SunloginClient.pkg"

  uninstall quit:      "com.oray.sunlogin.macclient",
            pkgutil:   "com.oray.sunlogin.macclient",
            launchctl: [
              "com.oray.sunlogin ()",
              "com.oray.sunlogin.agent",
              "com.oray.sunlogin.desktopagent",
              "com.oray.sunlogin.helper",
              "com.oray.sunlogin.service",
              "com.oray.sunlogin.startup",
            ]
end
