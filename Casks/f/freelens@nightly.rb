cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-0-nightly-2025-11-07"
  sha256 arm:   "1489ec013099244b55b51e78a8e9f9bdbd86392783d9d6f68d7567a49af5f7ff",
         intel: "6b57cdca7b455b289d8b531a4451d8ed50df3f40dfa0e5574a8cc6daa3df2dad"

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
