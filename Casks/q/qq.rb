cask "qq" do
  version "7.0.0_260812_01,9.9.33,126b7ce6"
  sha256 "b195c26df362af58954c898ab1dd984784a2ba6f57a629e6fb9b3ecc3bf9e65c"

  url "https://qqdl.gtimg.cn/qqfile/QQNT/#{version.csv.second}/release/#{version.csv.third}/QQ_#{version.csv.first}.dmg",
      verified: "qqdl.gtimg.cn/qqfile/QQNT/"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/index/#/macos"

  livecheck do
    url "https://im.qq.com/proxy/domain/cdn-go.cn/qq-web/im.qq.com_new/latest/rainbow/pcConfig.json"
    regex(%r{/QQNT/(\d+(?:\.\d+)+)/release/(\h+)/QQ[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("macOS", "downloadUrl")&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "QQ.app"

  uninstall quit: "com.tencent.qq"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.qq",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.qq.sfl*",
    "~/Library/Caches/com.tencent.qq",
    "~/Library/Containers/com.tencent.qq",
    "~/Library/Containers/com.tencent.qq.share",
    "~/Library/Containers/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent",
    "~/Library/Preferences/com.tencent.qq.plist",
    "~/Library/Saved Application State/com.tencent.qq.savedState",
    "~/Library/WebKit/com.tencent.qq",
  ]
end
