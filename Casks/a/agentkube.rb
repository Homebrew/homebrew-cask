cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.8"
  sha256 arm:   "82caaf4af5432734e6ba5d61b83a6ac4e25b5405ba65fce3b19a713ef2d64223",
         intel: "c08b2c288ee9b7025774f78b0ef58d9ea7d4e25feb5bbe67eed6db97224563c4"

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
