cask "loginputmac" do
  version "2.4.0"
  sha256 "e2305a6e97fc1ebf611b7bb5d3c9c947c05f252ecc66116245fe6c336bcb0a38"

  # loginput-mac2.content-delivery.top/ was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg"
  appcast "https://im.logcg.com/appcast#{version.major}.xml"
  name "LoginputMac"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
