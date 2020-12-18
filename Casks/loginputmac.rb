cask "loginputmac" do
  version "2.4.1"
  sha256 "e1aab3f3d9edeab525ea7e60ecfeddfeab5ba666fac4a7caf1c4ad13351125d9"

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
