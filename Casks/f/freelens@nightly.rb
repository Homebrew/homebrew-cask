cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2-0-nightly-2026-03-13"
  sha256 arm:   "f3e6d0015792e40e50a10b1c6dd8475eeca1f677169ea96323d0b49ef62ab9e1",
         intel: "a679dc2eca341c6dfe8e07487d1d869116d1a2f6fe2c68d825ef14397d683175"

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
