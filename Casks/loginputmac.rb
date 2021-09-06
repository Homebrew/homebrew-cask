cask "loginputmac" do
  version "2.4.8,23601"
  sha256 "c7b21000beb2704917b08e7f077c66b9290389f2b4bd32413c7a238a5627e006"

  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg",
      verified: "loginput-mac2.content-delivery.top/"
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
