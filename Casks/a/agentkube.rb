cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "09049b2bb54dbbda0c4b6f837501589d938ee43f4a994c9924bbcc589145085e",
         intel: "48dd4ff1528797c0b2a7314ef79ab0b560a375df12a8ecc12c87a590ec637be2"

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

