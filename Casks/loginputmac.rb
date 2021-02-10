cask "loginputmac" do
  version "2.4.3"
  sha256 "17b2f5b28de13ab213b533a749fa75f66663bae6b30d71d50a3958ce2b5c6dcc"

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
