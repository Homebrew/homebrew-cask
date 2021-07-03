cask "sunloginclient" do
  version "11.0.1.36834"
  sha256 "bd6acd504e24994aec7483defb745ce77ed6c8e963df99da3ff8c2052b12ca70"

  url "https://dl-cdn.oray.com/sunlogin/mac/SunloginClient-#{version}.dmg"
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
