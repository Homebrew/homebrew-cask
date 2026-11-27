cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0.44991058,9268db16"
  sha256 arm:   "a2d84bf022b5197a0d1635a2c0f0300d2f6470118102f0cffb850e5708ee26d9",
         intel: "1275ddc54e675815ed7eb5edab707a235b07be2d04c8612422dcf88a1ed12d14"

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
  depends_on macos: :monterey

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
