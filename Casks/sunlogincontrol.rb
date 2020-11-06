cask "sunlogincontrol" do
  version "3.0"
  sha256 "87ff12a9192ed809c2c8668e63cf44b1101544e52f43e8cc912ed2b20acf077f"

  url "https://download.oray.com/sunlogin/mac/SunloginControl#{version}.dmg"
  name "SunloginControl"
  name "向日葵控制端"
  homepage "https://sunlogin.oray.com/"

  pkg "SunloginControl.pkg"

  uninstall quit:    "com.oray.remote",
            pkgutil: "com.oray.sunlogin.control"
end
