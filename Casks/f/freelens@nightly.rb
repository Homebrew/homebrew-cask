cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-0-nightly-2026-07-04"
  sha256 arm:   "cdf632da49813556b8a349d11e7e3bf36c07e30e7aecffec4f3e8b3d6e9c50a5",
         intel: "d8e06eef8bc4d7ee053fa58fc228f71f5bb6f5bd4b8159808f13e3047a942f12"

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
