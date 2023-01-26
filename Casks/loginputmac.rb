cask "loginputmac" do
  version "3.2.5,9581"
  sha256 "0fa9d1ed619431fe8c9320e4c8097806614a9a0001dabc2ebb8e6b3565cb9b39"

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
  depends_on macos: ">= :mojave"

  pkg "落格输入法 macOS #{version.major}.pkg"

  uninstall pkgutil: "com.logcg.pkg.LoginputMac#{version.major}",
            quit:    "com.logcg.inputmethod.LogInputMac#{version.major}"

  zap trash: [
    "~/Documents/落格输入法",
    "~/Library/Application Support/LogInputMac#{version.major}",
    "~/Library/Application Support/com.logcg.inputmethod.LogInputMac#{version.major}",
    "~/Library/Caches/com.logcg.inputmethod.LogInputMac#{version.major}",
    "~/Library/HTTPStorages/com.logcg.inputmethod.LogInputMac#{version.major}",
    "~/Library/Preferences/com.logcg.inputmethod.LogInputMac#{version.major}.plist",
    "~/Library/Saved Application State/com.logcg.inputmethod.LogInputMac#{version.major}.Settings.savedState",
  ]
end
