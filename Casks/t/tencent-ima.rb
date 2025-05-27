cask "tencent-ima" do
  version "1.7.2_2662"
  sha256 "5a4507fb60fcd43df4d821f2752e2fb32938602b711745e88d08b5674b31b511"

  url "https://ima-app.image.myqcloud.com/app/ima.copilot_universal_1018_1.7.2_2662.dmg",
      verified: "ima-app.image.myqcloud.com"
  name "Tencent IMA"
  desc "Knowledge base application by Tencent"
  homepage "https://ima.qq.com/"

  livecheck do
    skip "No reliable automated version detection available"
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
