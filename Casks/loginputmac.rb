cask "loginputmac" do
  version "2.4.4,23511"
  sha256 "d2f8d0a5aeb1508b76b88e3ce7eb4abd561a5d19f3d6648a6b7aef2d95d5301f"

  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg",
      verified: "loginput-mac2.content-delivery.top/"
  name "LoginputMac"
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
