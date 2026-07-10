cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.4-0-nightly-2026-07-10"
  sha256 arm:   "2ba42430e23bcd91e01ad717edcb33834d38fc380fe1feee731ac181bd43ef49",
         intel: "d5aa4ebc0e611f4ef74d1e3e57d525f0f845d133987e5db0bf8e477b9f88d252"

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
