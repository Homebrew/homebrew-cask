cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "4.12.3.42658816,8e9c06cb"
  sha256 arm:   "30f3c8187fa13b1e52bc6e204dfec7875c2835e2854557a3d80b481d700d17b5",
         intel: "0395a5cdfd260e183642f2cb5ec98daf8c1926be0c216d62c83a088c2b1893f0"

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
