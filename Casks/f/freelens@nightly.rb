cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4-0-nightly-2025-08-25"
  sha256 arm:   "16056c5bc7ba815c966def71346fe3cb282938ace40c46972a540fe4f918bd0e",
         intel: "3d08ad4b9269e96edc8c9c09a43f86859f89e260647f31bac97012b73a60113e"

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
