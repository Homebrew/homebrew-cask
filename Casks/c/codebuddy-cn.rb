cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "4.11.0.35330129,a64e0542"
  sha256 arm:   "b917146b4e8ca20456c06ef5d0b9d7e0c410464019608c5f851a809c33e9b718",
         intel: "099e0d7c63c29682a5e100ff6b006a0f4617d9f888953acde502d463073c191a"

  url "https://acc-1258344699.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}-cn.zip",
      verified: "acc-1258344699.cos.accelerate.myqcloud.com/aiide/"
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
  depends_on macos: :big_sur

  app "CodeBuddy CN.app"

  zap trash: [
    "~/.codebuddycn",
    "~/Library/Application Support/CodeBuddy CN",
    "~/Library/Application Support/CodeBuddyExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.codebuddycn.sfl*",
    "~/Library/Caches/com.tencent.codebuddycn",
    "~/Library/Caches/com.tencent.codebuddycn.ShipIt",
    "~/Library/Preferences/com.tencent.codebuddycn.plist",
  ]
end
