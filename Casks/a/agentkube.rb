cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "b26159149837a0236e0951c28bebb1fd38fdd80c7540eea62b7b0401616a5527",
         intel: "9fec8e8854b9512c9af621f6ccf858ad05da993bb5eac725414be5c7ed958fb8"

  url "https://github.com/agentkube/agentkube/releases/download/v#{version}/agentkube_#{version}_#{arch}-apple-darwin.tar.gz",
      verified: "github.com/agentkube/agentkube/"
  name "Agentkube"
  desc "AI-powered Kubernetes IDE"
  homepage "https://agentkube.com/"

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
