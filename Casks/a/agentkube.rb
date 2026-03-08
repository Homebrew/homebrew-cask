cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.12"
  sha256 arm:   "c8c80699198b681ad79a31f8294df24e718e4f2aa935e90e2708f2535dd93dc4",
         intel: "a29e56e28ef9a2d837281e0c3add6f7eeee43c27cbe8ee8d04b04292aef10bf6"

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
