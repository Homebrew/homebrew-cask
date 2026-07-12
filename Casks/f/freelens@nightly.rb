cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.4-0-nightly-2026-07-12"
  sha256 arm:   "33f4fe7cbcf63e7df88bab2d1550e6cf2c7fc7e3cb6560460e96b786a196eef6",
         intel: "6490f208de47659cc3bf406f5c87dabdd6e9928dafb38876f48131561147fff4"

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
