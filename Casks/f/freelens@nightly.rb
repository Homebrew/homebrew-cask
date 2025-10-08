cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-0-nightly-2025-10-08"
  sha256 arm:   "40e580ac167e9c3c112f1824868c8275d180b51fd031a6f7b742ed574aef4dee",
         intel: "b27c46ccd564a3f53bdd59ee9e6f5b4249b6111e7c7ac35ca07fbb0855d93e38"

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
