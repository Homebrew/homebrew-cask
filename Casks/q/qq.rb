cask "qq" do
  version "6.9.73_250523_01"
  sha256 "d5a711e0d81cf9b9a6a42725ad38255b535b7ad6f4b2738bf5ffd029bf9f8cc3"

  url "https://dldir1.qq.com/qqfile/qq/QQNT/Mac/QQ_#{version}.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/index.shtml"

  livecheck do
    url "https://im.qq.com/rainbow/ntQQDownload/"
    regex(/QQ[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
