cask "sogouinput" do
  version "606a,1628136953"
  sha256 "f9989231958812fa9c59d295df3f3e42737e21c2eb99925fbcbd8ce6b613951a"

  url "http://cdn2.ime.sogou.com/dl/index/#{version.after_comma}/sogou_mac_#{version.before_comma}.zip"
  name "Sogou Input Method"
  name "搜狗输入法"
  desc "Input method supporting full and double spelling"
  homepage "https://pinyin.sogou.com/mac/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{/(\d+(?:\.\d+)*)/sogou_mac_(\d+(?:.\d+).*)\.zip}i)
      "#{match[2]},#{match[1]}"
    end
  end

  installer manual: "sogou_mac_#{version.before_comma}.app"

  uninstall delete:    [
    "/Library/Input Methods/SogouInput.app",
    "/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator",
  ],
            launchctl: "com.sogou.SogouServices"

  zap trash: [
    "~/.sogouinput",
    "~/Library/Application Support/Sogou/EmojiPanel",
    "~/Library/Application Support/Sogou/InputMethod",
    "~/Library/Caches/SogouServices",
    "~/Library/Caches/com.sogou.SGAssistPanel",
    "~/Library/Caches/com.sogou.SogouPreference",
    "~/Library/Caches/com.sogou.inputmethod.sogou",
    "~/Library/Cookies/SogouServices.binarycookies",
    "~/Library/Cookies/com.sogou.SogouPreference.binarycookies",
    "~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies",
    "~/Library/Preferences/com.sogou.SogouPreference.plist",
    "~/Library/Saved Application State/com.sogou.SogouInstaller.savedState",
  ],
      rmdir: "~/Library/Application Support/Sogou"
end
