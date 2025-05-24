cask "tencent-ima" do
  version "1.3.1_1919"
  sha256 "dd859b18ad187681f68ba0295157dbc400e7c520b643018964c955ee497c4016"

  url "https://ima-app.image.myqcloud.com/app/ima.copilot_universal_#{version}.dmg",
      verified: "ima-app.image.myqcloud.com"
  name "Tencent IMA"
  desc "Knowledge base application by Tencent"
  homepage "https://ima.qq.com/"

  livecheck do
    url "https://qbtool.static.qq.com/ima/assets/official-website/assets/index-BKuCC9QK.js"
    regex(/ima\.copilot_universal_(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ima.copilot.app"

  uninstall quit: "com.tencent.ima.copilot" # Likely, but unverified

  zap trash: [
    "~/Library/Application Scripts/com.tencent.ima.copilot",
    "~/Library/Application Support/ima.copilot",
    "~/Library/Application Support/Tencent/ima.copilot",
    "~/Library/Caches/com.tencent.ima.copilot",
    "~/Library/Caches/ima.copilot",
    "~/Library/Containers/com.tencent.ima.copilot",
    "~/Library/HTTPStorages/com.tencent.ima.copilot",
    "~/Library/Logs/ima.copilot",
    "~/Library/Preferences/com.tencent.ima.copilot.plist",
    "~/Library/Saved Application State/com.tencent.ima.copilot.savedState",
    "~/Library/WebKit/com.tencent.ima.copilot",
  ]
end
