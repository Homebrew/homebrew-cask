cask "codebuddy" do
  arch arm: "arm64", intel: "x64"

  version "4.12.2.41207131,425ab70e"
  sha256 arm:   "4c1a424958eeb3ee4068b363acd062849699f4d48b1cf5adba56209831569491",
         intel: "eadd08cc8a8cf8f8b2797e699335395328337116a5bdead1b998e875a95f74bf"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/aiide/darwin-#{arch}/CodeBuddy-darwin-#{arch}-#{version.csv.first}-#{version.csv.second}.zip"
  name "CodeBuddy"
  desc "AI-powered adaptive IDE"
  homepage "https://www.codebuddy.ai/ide/", browsed: "2026-10-08"

  livecheck do
    url "https://www.codebuddy.ai/v2/update?platform=ide-darwin-#{arch}&version=1.0.0&x-machine-id=default"
    regex(%r{/CodeBuddy[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)-(\h+)\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # The URL https://www.codebuddy.ai/ is not reachable in the autobump environment
  # so we have to skip it in those instances for now.
  no_autobump! because: "Livecheck is unreachable in autobump environment"

  auto_updates true
  depends_on :macos

  app "CodeBuddy.app"

  zap trash: [
    "~/.codebuddy",
    "~/Library/Application Support/CodeBuddy",
    "~/Library/Application Support/CodeBuddyExtension/Cache/CodeBuddyIDE/CodeBuddy",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.codebuddy.sfl*",
    "~/Library/Application Support/com.tencent.codebuddy*",
    "~/Library/Caches/com.tencent.codebuddy",
    "~/Library/Caches/com.tencent.codebuddy.ShipIt",
    "~/Library/HTTPStorages/com.tencent.codebuddy",
    "~/Library/Preferences/com.tencent.codebuddy.helper.plist",
    "~/Library/Preferences/com.tencent.codebuddy.plist",
  ]
end
