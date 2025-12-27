cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1-0-nightly-2025-12-27"
  sha256 arm:   "718944ea8bd2dc50ee2408dda9697f33e43d5a509bc5b309c40dbd15f5122309",
         intel: "5738284056373d52486c3abc659cdfffa86e881b52d40c9ec53d7ffdaf24f9b5"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
