cask "sogouinput" do
  version "690,1659005623"
  sha256 "fc05dc126353602fb6ee4845742fa7adf6742ad778e0749d56a06a1faf1c515b"

  url "http://cdn2.ime.sogou.com/dl/gzindex/#{version.csv.second}/sogou_mac_#{version.csv.first}.zip"
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

  auto_updates true

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
