cask "sunlogincontrol" do
  version "5.3.1.40594"
  sha256 "27d8e5a6fbda5340f3a0d5fc913f08bea17a50ddd3f3b57c3e66d13e6ba7b735"

  url "https://down.oray.com/sunlogin/mac/SunloginRemote_#{version}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  desc "Target component of remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=17"
    strategy :header_match
    regex(/SunloginRemote[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "SunloginRemote.pkg"

  uninstall quit:    "com.oray.remote",
            pkgutil: "com.oray.remote"
end
