cask "sunlogincontrol" do
  version "5.6.0.51662"
  sha256 "d06accaa1dc86bc2157764e723d39b2f582735e04d725f659e8a9be8117a7d9f"

  url "https://down.oray.com/sunlogin/mac/SunloginRemote_#{version}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  desc "Target component of remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=17"
    regex(/SunloginRemote[._-](\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  pkg "SunloginRemote.pkg"

  uninstall quit:    "com.oray.remote",
            pkgutil: "com.oray.remote"
end
