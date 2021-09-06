cask "sunloginclient" do
  version "11.0.1.39931"
  sha256 "785a61095f5c4640fbecc2770ba25c7717406c9a5262019493c4e4233102a97d"

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
