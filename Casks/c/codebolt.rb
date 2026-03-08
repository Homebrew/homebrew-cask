cask "codebolt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.26"
  sha256 arm:   "74702dd66300878df3be51d42321dc58dc706bdbc81567f478f3bac43010c0e1",
         intel: "4bd3d62b08805e3e17e4b649f1d7410b47247ddbfa294471007ef731b9c4b03e"

  url "https://releasebuilds.codebolt.ai/CodeBolt-#{version}-#{arch}.dmg"
  name "CodeBolt"
  desc "AI Powered Code Editor"
  homepage "https://codebolt.ai/"

  livecheck do
    url "https://releasebuilds.codebolt.ai/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

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
