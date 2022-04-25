cask "sogouinput" do
  version "650b,1649731856"
  sha256 "84eed725abe26faa183f66281aab64f28b5b2c766863fe037830bf3ae5ce8636"

  url "http://cdn2.ime.sogou.com/dl/gzindex/#{version.csv.second}/sogou_mac_#{version.csv.first}.zip",
      verified: "cdn2.ime.sogou.com/dl/gzindex/"
  name "Sogou Input Method"
  name "搜狗输入法"
  desc "Input method supporting full and double spelling"
  homepage "https://pinyin.sogou.com/mac/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{/(\d+(?:\.\d+)*)/sogou_mac_(\d+(?:\.\d+)*[a-z]*)\.zip}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  installer manual: "sogou_mac_#{version.csv.first}.app"

  uninstall delete:    [
    "/Library/Input Methods/SogouInput.app",
    "/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator",
  ],
            launchctl: "com.sogou.SogouServices"

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
