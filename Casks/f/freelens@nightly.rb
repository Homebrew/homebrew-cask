cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-nightly-2026-06-26"
  sha256 arm:   "16071088ac8f1df68532c052373ac2d0ac4bdc3271d4b6567803030ad965d1be",
         intel: "49bac09dda47c68d6953b29908325a12dfea15765dad39ec3b5d3ae0430dfa68"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
