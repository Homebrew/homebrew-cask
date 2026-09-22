cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "4.12.1.39217423,757a5b2f"
  sha256 arm:   "e58e04918be2c30ecf5ea7b9940ec4162a6fe4a46702832c067912a601df2b85",
         intel: "66684a266b396b721eb69937ba5a87bff4ecd9173eee7a0c3ecce3cff456fefe"

  url "https://acc-1258344699.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}-cn.zip"
  name "CodeBuddy CN"
  desc "AI-powered adaptive IDE (Chinese version)"
  homepage "https://copilot.tencent.com/ide/"

  livecheck do
    url "https://copilot.tencent.com/v2/update?platform=ide-darwin-#{arch}&version=1.0.0&x-machine-id=default"
    regex(%r{/CodeBuddy[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)-(\h+)[._-]cn\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "CodeBuddy CN.app"

  zap trash: [
    "~/.codebuddycn",
    "~/Library/Application Support/CodeBuddy CN",
    "~/Library/Application Support/CodeBuddyExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.codebuddycn.sfl*",
    "~/Library/Application Support/com.tencent.codebuddycn*",
    "~/Library/Caches/com.tencent.codebuddycn",
    "~/Library/Caches/com.tencent.codebuddycn.ShipIt",
    "~/Library/HTTPStorages/com.tencent.codebuddycn*",
    "~/Library/Preferences/com.tencent.codebuddycn.helper.plist",
    "~/Library/Preferences/com.tencent.codebuddycn.plist",
  ]
end
