cask "codebuddy" do
  arch arm: "arm64", intel: "x64"

  version "4.12.0.37847260,b4c35ed0"
  sha256 arm:   "59c61e2cd4416b66ead867f3f0918d247d26be72d226c5427713825deb0d578d",
         intel: "30631275dc26d51e1be40764327553d4218627161fe58d1097cecfeac22b6fd5"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}.zip"
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
