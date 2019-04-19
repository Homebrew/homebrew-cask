cask 'loginputmac' do
  version '2.1.9'
  sha256 'e3a83816dc0352f88f6041c57831259de9080b8e3243a3bf1a13fbd38ca2bce2'

  # loginput-mac2.content-delivery.top was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg"
  appcast "https://im.logcg.com/appcast#{version.major}.xml"
  name 'LoginputMac'
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}"
end
