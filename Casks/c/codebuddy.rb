cask "codebuddy" do
  arch arm: "arm64", intel: "x64"

  version "4.9.15.31887257,cbd94294"
  sha256 arm:   "b3f620bde62573c8c00ba4011dd87b1b899063c53c9a897771a520733a899818",
         intel: "18e36db54c11b89fc7559b9bd46a1f460cbc531a6fef1c08f38dbfbd85d03d45"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/"
  name "CodeBuddy"
  desc "AI-powered adaptive IDE"
  homepage "https://www.codebuddy.ai/ide/"

  livecheck do
    url "https://www.codebuddy.ai/v2/update?platform=ide-darwin-#{arch}&version=1.0.0&x-machine-id=default"
    regex(%r{/CodeBuddy[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)-(\h+)\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "CodeBuddy.app"

  zap trash: [
    "~/.codebuddy",
    "~/Library/Application Support/CodeBuddy",
    "~/Library/Application Support/CodeBuddyExtension/Cache/CodeBuddyIDE/CodeBuddy",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.codebuddy.sfl*",
    "~/Library/Caches/com.tencent.codebuddy",
    "~/Library/Caches/com.tencent.codebuddy.ShipIt",
    "~/Library/HTTPStorages/com.tencent.codebuddy",
    "~/Library/Preferences/com.tencent.codebuddy.plist",
  ]
end
