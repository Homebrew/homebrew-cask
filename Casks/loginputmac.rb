cask "loginputmac" do
  version "3.2.2,8502"
  sha256 "31f7cc30089c2e1d43255f0213dd8e68c78ad6bc0f0558ae7b1fb3c62c1e7e19"

  url "https://loginput-mac2.totest.top/loginputmac#{version.major}_latest.dmg",
      verified: "loginput-mac2.totest.top/"
  name "LoginputMac"
  desc "Chinese input method"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  livecheck do
    url "https://im.logcg.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "落格输入法 macOS #{version.major}.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"
end
