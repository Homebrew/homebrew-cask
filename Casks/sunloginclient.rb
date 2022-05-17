cask "sunloginclient" do
  version "12.5.1.46673"
  sha256 "bee6c4dd52c1d300b012bce1b70cc3bcce29c0feccdfb57ba6cb248e4433468f"

  url "https://down.oray.com/sunlogin/mac/SunloginClient#{version}.dmg"
  name "Sunlogin Client"
  name "向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=89"
    strategy :header_match
    regex(/SunloginClient[._-]?(\d+(?:\.\d+)+)\.dmg/i)
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
