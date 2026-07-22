cask "sogouinput" do
  version "624d"
  sha256 "a561e6a20e4b9e350ea79a8894408c038427f93b9ba457d424f7bd46a4ef060e"

  url "https://ime.gtimg.com/pc/sogou_mac_#{version}.zip",
      verified: "ime.gtimg.com/pc/"
  name "Sogou Input Method"
  name "搜狗输入法"
  desc "Input method supporting full and double spelling"
  homepage "https://pinyin.sogou.com/mac/"

  livecheck do
    url :homepage
    regex(%r{https?://ime\.gtimg\.com/pc/sogou_mac_(\h+)\.zip}i)
  end

  auto_updates true
  depends_on :macos

  installer manual: "sogou_mac_#{version}.app"

  uninstall launchctl: "com.sogou.SogouServices",
            delete:    [
              "/Library/Input Methods/SogouInput.app",
              "/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator",
            ]

  zap trash: [
        "~/.sogouinput",
        "~/Library/Application Support/Sogou/EmojiPanel",
        "~/Library/Application Support/Sogou/InputMethod",
        "~/Library/Caches/com.sogou.inputmethod.sogou",
        "~/Library/Caches/com.sogou.SGAssistPanel",
        "~/Library/Caches/com.sogou.SogouPreference",
        "~/Library/Caches/SogouServices",
        "~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies",
        "~/Library/Cookies/com.sogou.SogouPreference.binarycookies",
        "~/Library/Cookies/SogouServices.binarycookies",
        "~/Library/Preferences/com.sogou.SogouPreference.plist",
        "~/Library/Saved Application State/com.sogou.SogouInstaller.savedState",
      ],
      rmdir: "~/Library/Application Support/Sogou"
end
