cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "2ff4345be86a513566d531d2c230785dc4db7f881116de00035a342e790cd8f3",
         intel: "e45e35e72f9f723b0dc886480c83f3171a3f89d4fba8393d1aacd25fc74811d0"

  url "https://github.com/agentkube/agentkube/releases/download/v#{version}/agentkube_#{version}_#{arch}-apple-darwin.tar.gz",
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
