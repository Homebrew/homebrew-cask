cask 'loginputmac' do
  version '2.3.0'
  sha256 '5be3517b20280da8027663a01440575787eae6efb9afdc926d5dfa25878c8367'

  # loginput-mac2.content-delivery.top was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/loginputmac#{version.major}_latest.pkg"
  appcast "https://im.logcg.com/appcast#{version.major}.xml"
  name 'LoginputMac'
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  pkg "loginputmac#{version.major}_latest.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
