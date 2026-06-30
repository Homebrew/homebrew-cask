cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-0-nightly-2026-06-30"
  sha256 arm:   "556ba20204e52260fccc5cec0dea934f16da3189fab236886746a874b5aad4c9",
         intel: "16ec65794c7a95d1379e501b59c33e1cd1a09e018d20c8776f66d9c847647067"

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
