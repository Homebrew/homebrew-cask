cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "4.12.0.37847260,b4c35ed0"
  sha256 arm:   "b35419e267fe7cbb4b5f1b1f748141860531fb399ee32a2e9e8121ada2285e2a",
         intel: "a56902021b2386e73e7a9bec82ed5b063e2c5a09d7926e6b9e304efe01ee4e86"

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
  depends_on macos: :big_sur

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
