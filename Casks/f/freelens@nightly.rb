cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-nightly-2026-06-24"
  sha256 arm:   "3744bb353e0c23c51a2c705f827ff43726424b94f452ed1a9e206bf95f67f847",
         intel: "eb8c91cbc832ffdbfd660aa3131b4f3f9c6f553e3d1769658d6ae1d6ece5f154"

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
