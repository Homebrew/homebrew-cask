cask "codebuddy" do
  arch arm: "arm64", intel: "x64"

  version "4.12.1.39217423,757a5b2f"
  sha256 arm:   "4980957cfee5236b3305907798c34852548ca1324d773d98dfcc40bd146f276d",
         intel: "bcc501ee67d57089ac147951c47485b293b69adcf50c0be1abf8e976be6fcdef"

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
    "~/Library/Caches/com.tencent.codebuddy",
    "~/Library/Caches/com.tencent.codebuddy.ShipIt",
    "~/Library/HTTPStorages/com.tencent.codebuddy",
    "~/Library/Preferences/com.tencent.codebuddy.plist",
  ]
end
