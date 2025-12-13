cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1-0-nightly-2025-12-13"
  sha256 arm:   "b10c32ccfa2ec4735def0e4a61702c3206412664b26228b2f0b5d0d586fc3c88",
         intel: "baaf683ce1403764c95c0557d656ad33ccd6e03c828b3ecab592040443385d53"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
