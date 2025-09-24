cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1-0-nightly-2025-09-24"
  sha256 arm:   "b7c28b977e9e1e7be4422b178acceeb66424935374211f06ebf9465204e89704",
         intel: "170a8512a36238b0af5da9e961a605b5766ebac11f493e77fdc552dd2a713277"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
