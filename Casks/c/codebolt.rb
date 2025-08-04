cask "codebolt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.20"
  sha256 arm:   "cab3bf22f607abfbb057b159d53f0f7b0bb0f87da17287b410861a5cf6fd6a03",
         intel: "3e6406dca31282e6f9a77f7fcc50776fb1a52242fcd41a86a049c2bb3b1f173d"

  url "https://releasebuilds.codebolt.ai/CodeBolt-#{version}-#{arch}.dmg"
  name "CodeBolt"
  desc "AI Powered Code Editor"
  homepage "https://codebolt.ai/"

  livecheck do
    url "https://github.com/codeboltai/codebolt/"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CodeBolt.app"

  zap trash: [
    "~/Library/Application Support/Caches/codebolt-updater",
    "~/Library/Application Support/codebolt",
    "~/Library/Caches/com.codebolt.*",
    "~/Library/HTTPStorages/com.codebolt.*",
    "~/Library/Logs/CodeBolt",
    "~/Library/Preferences/com.codebolt.*.plist",
    "~/Library/Saved Application State/com.codebolt.*.savedState",
  ]
end
