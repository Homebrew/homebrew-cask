cask "codebolt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.17"
  sha256 arm:   "216c4fe9d254da61613178f1f9fa896d6c68012cb2c10eb79efe91fe1b43158c",
         intel: "6631b8187bc4aaa2198eb5af2d8251dae45ac79084cae68a41e96007f3422159"

  url "https://releasebuilds.codebolt.ai/CodeBolt-#{version}#{"-#{arch}" if arch == "arm64"}.dmg"
  name "CodeBolt"
  desc "AI Powered Code Editor"
  homepage "https://codebolt.ai/"

  livecheck do
    skip "Version is managed manually"
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
