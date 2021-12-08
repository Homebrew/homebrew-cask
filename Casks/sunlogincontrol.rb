cask "sunlogincontrol" do
  version "5.3.1.40594"
  sha256 "27d8e5a6fbda5340f3a0d5fc913f08bea17a50ddd3f3b57c3e66d13e6ba7b735"

  url "https://down.oray.com/sunlogin/mac/SunloginRemote_#{version}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  homepage "https://sunlogin.oray.com/"

  pkg "SunloginControl.pkg"

  uninstall quit:    "com.oray.remote",
            pkgutil: "com.oray.sunlogin.control"
end
