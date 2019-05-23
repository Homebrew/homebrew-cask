cask 'loginputmac' do
  version '2.2.0'
  sha256 'f9bc5ac05f4090fe132e7543bb3055b849a792ce0091a68d1e8c3f5b153e42b6'

  # loginput-mac2.content-delivery.top was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg"
  appcast "https://im.logcg.com/appcast#{version.major}.xml"
  name 'LoginputMac'
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}"
end
