cask "sunlogincontrol" do
  version "5.6.0.56304"
  sha256 "c791df84595ba3d7907651b4106c334fcd88a688d1e7674ff19dc129a37f4882"

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
