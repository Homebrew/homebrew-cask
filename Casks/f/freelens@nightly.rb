cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-0-nightly-2025-11-29"
  sha256 arm:   "949b462171cc7811c8f3fde6f1b763c7ac14e33afec24bf8e2a60dd640c592e9",
         intel: "24483627844085077032e202da13ce8292dfdf1d5b7bfa01ada15e1bd2058659"

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
