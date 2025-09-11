cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4-0-nightly-2025-09-11"
  sha256 arm:   "674173d456de4e8f548de7a42912a61107d5bcb78ef4916a27bc2712d16576f3",
         intel: "21c701936be18a5e6b7a6f9df6418b525e4773920b4748ce86a4295b80dc1c3f"

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
