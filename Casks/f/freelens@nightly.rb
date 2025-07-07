cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-0-nightly-2025-07-07"
  sha256 arm:   "fa8d70806384ef12e9b62e91c1232caf00a0e07b2864f86d4798c5440186699c",
         intel: "a202db53752e165f21ff008a6c7eb51fe7201d258540d127bf868f653df884f8"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: [
    "freelens",
  ]
  depends_on macos: ">= :high_sierra"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
