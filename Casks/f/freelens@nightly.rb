cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-0-nightly-2026-06-14"
  sha256 arm:   "da85ad881a94b1a0c1109ec7a7e1de48e096221e95395f4c1a6d502ef2286804",
         intel: "ca45906ee5abc8b487f401a18dd915c00e44df02da89b2fdb0e6462318bbef38"

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
