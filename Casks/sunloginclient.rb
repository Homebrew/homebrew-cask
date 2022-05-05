cask "sunloginclient" do
  version "12.5.0.45236"
  sha256 "a7cfd675da269712f85b996283cd40bde9259ee1d227d37a51884984ea0b3ec7"

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
