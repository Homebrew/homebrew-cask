cask "codebuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "4.5.8.22610187,9400f21f4d,5234ba0b"
  sha256 arm:   "67e78f9b86b0cdecef66d707b8476b9434d5be13dec6569f112e69641b01eb58",
         intel: "91e9bbf0b9a7c9fd5ed2f1ce6162f64c40191fc47fb4b3bb0f74a088a0941b86"

  url "https://acc-1258344699.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}-#{version.csv.third}-cn.zip",
      verified: "acc-1258344699.cos.accelerate.myqcloud.com/aiide/"
  name "CodeBuddy CN"
  desc "AI-powered adaptive IDE (Chinese version)"
  homepage "https://copilot.tencent.com/ide/"

  livecheck do
    url "https://copilot.tencent.com/v2/update?platform=ide-darwin-#{arch}&version=1.0.0&x-machine-id=default"
    regex(%r{/CodeBuddy[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)-(\h+)-(\h+)[._-]cn\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
