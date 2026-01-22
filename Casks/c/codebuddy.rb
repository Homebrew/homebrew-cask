cask "codebuddy" do
  arch arm: "arm64", intel: "x64"

  version "4.3.3.18223695,60fa3f94a5,241443df"
  sha256 arm:   "637944c17fd0ef20dbe67d609f6730908ee1ae0760cf2db984a8a9cd4b30d560",
         intel: "a3286e18bba732503d5d3a8b0ce5b37092792f992621b27eeb865d88d5c58c9d"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}-#{version.csv.third}.zip",
      verified: "codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/"
  name "CodeBuddy"
  desc "AI-powered adaptive IDE"
  homepage "https://www.codebuddy.ai/ide/"

  livecheck do
    url "https://www.codebuddy.ai/v2/update?platform=ide-darwin-#{arch}&version=1.0.0&x-machine-id=default"
    regex(%r{/CodeBuddy[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)-(\h+)-(\h+)\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
