cask "loginputmac" do
  version "2.5.5,24212"
  sha256 "f56a177d73df293517cef115664e28ec49557f3c74ee8d587d4bcd326eb4e3ac"

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
