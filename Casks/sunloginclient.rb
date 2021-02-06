cask "sunloginclient" do
  version "11.0.0.34335"
  sha256 "1fb36df640cc789bb89be8877c7add77af3ce565197740d56f39c6057229a9d7"

  url "https://dl-cdn.oray.com/sunlogin/mac/SunloginClient_#{version}.dmg"
  name "Sunlogin X"
  name "向日葵 X"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  pkg "SunloginClient.pkg"

  uninstall quit:      "com.oray.sunlogin.macclient",
            pkgutil:   "com.oray.sunlogin.macclient",
            launchctl: "com.oray.sunlogin ()"
end
