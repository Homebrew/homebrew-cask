cask "agentkube" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.9"
  sha256 arm:   "5cc9a31c8ae950cac0f287a93d11bb598c4662039babad7b6c67988b93308852",
         intel: "70a68f24e1668b2cd2a9f2941d56299679c229f1008d921806c996ae2239a6df"

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
