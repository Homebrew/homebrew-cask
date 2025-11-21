cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-0-nightly-2025-11-21"
  sha256 arm:   "7a79a0937498beb22d6d0ea9ff6aed2ddbb5842d6d199fbaa72575606f3a24a1",
         intel: "157f7deca5599e7a95ad159b266e572093ac130a044d2f965352ef291a21c190"

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
