cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.2-0-nightly-2026-06-28"
  sha256 arm:   "1aff1e4e4d89d52359cc75fc4c73d79c76cbe12d0fa5ae5793ba6c85d872b0c6",
         intel: "0bbac4a6692bf3c6980ee54403b834332c46b80882306795df4b3a014e4092f3"

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
