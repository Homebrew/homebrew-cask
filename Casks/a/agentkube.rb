cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.11"
  sha256 arm:   "896a0690550fb1b4c2ad96c63019857631792e071df9d90c82d5d79cb6426bd2",
         intel: "04fed50e59f3eb49a64f54234f7c1d2c1b14bd6832b8e0c4281588942417d0a1"

  url "https://github.com/agentkube/agentkube/releases/download/v#{version}/agentkube_#{version}_#{arch}.dmg",
      verified: "github.com/agentkube/agentkube/"
  name "Agentkube"
  desc "AI-powered Kubernetes IDE"
  homepage "https://agentkube.com/"

  # The upstream repository contains an old, one-off tag (1.0.4) that is
  # higher than current versions, so we check the "latest" release instead.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Agentkube.app"

  zap trash: [
    "~/.agentkube",
    "~/Library/Application Support/agentkube",
    "~/Library/Logs/agentkube.log",
    "~/Library/Preferences/agentkube.plist",
    "~/Library/Saved Application State/com.agentkube.app.savedState",
  ]
end
