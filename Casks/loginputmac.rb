cask 'loginputmac' do
  version '2.3.5'
  sha256 '91c5e011792f3ab2ee7f3e69ff7ea3a45c156f02b574cba2c57dbcfec82dd4a6'

  # loginput-mac2.content-delivery.top/ was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg"
  appcast "https://im.logcg.com/appcast#{version.major}.xml"
  name 'LoginputMac'
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
