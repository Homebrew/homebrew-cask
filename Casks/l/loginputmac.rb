cask "loginputmac" do
  version "3.3.2"
  sha256 "279c5403a1be1f44e65b31b9fee235459194178e55d072e97650e9cca57b1521"

  url "https://loginput-mac2.totest.top/loginputmac#{version.major}_latest.dmg",
      verified: "loginput-mac2.totest.top/"
  name "LoginputMac"
  desc "Chinese input method"
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  livecheck do
    url "https://im.logcg.com/appcast#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "落格输入法 macOS #{version.major}.pkg"

  uninstall quit:    "com.logcg.inputmethod.LogInputMac#{version.major}",
            pkgutil: "com.logcg.pkg.LoginputMac#{version.major}"

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
