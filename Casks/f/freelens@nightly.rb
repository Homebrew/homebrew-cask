cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-0-nightly-2026-06-19"
  sha256 arm:   "2f0cb51736f384f0ef95627f01da7493f6abab363b3071b13fb2cf1bc6d80258",
         intel: "d7d657e57976d30dfa9f66cec7944bb63fd89bf787d166c9e869097d1c206d1e"

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
