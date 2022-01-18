cask "loginputmac" do
  version "2.5.4,24201"
  sha256 "5db8aec4ab41249ac12be68858adeaa173257cdbb037ab48f350a2146203f4f2"

  url "https://loginput-mac2.totest.top/loginputmac#{version.major}_latest.pkg",
      verified: "loginput-mac2.totest.top/"
  name "LoginputMac"
  desc "Chinese input method"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  livecheck do
    url "https://im.logcg.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
