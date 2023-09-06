cask "sogouinput" do
  version "614d,1688992049,de39e96ed28553d6d3aed29807053e71,202309070549"
  sha256 "9eb308751095b2870790253a454e0689ba63b782a1cd6b5ebe1607af1ab9c9c9"

  url "http://ime-sec.gtimg.com/#{version.csv.fourth}/#{version.csv.third}/pc/dl/gzindex/#{version.csv.second}/sogou_mac_#{version.csv.first}.zip",
      verified: "ime-sec.gtimg.com/"
  name "Sogou Input Method"
  name "搜狗输入法"
  desc "Input method supporting full and double spelling"
  homepage "https://pinyin.sogou.com/mac/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(.+)/pc/dl/gzindex/(\d+(?:\.\d+)*)/sogou_mac_(\d+(?:\.\d+)*[a-z]*)\.zip}i)
      next if match.blank?

      "#{match[4]},#{match[3]},#{match[2]},#{match[1]}"
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
