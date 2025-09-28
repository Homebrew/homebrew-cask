cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1-nightly-2025-09-28"
  sha256 arm:   "e6df99cb3e02782eca34bf164f01047d92cbefd876f832657d1bdb52a946ba92",
         intel: "2ab5e251c5dd14251376c4eb84e0d40240adddf7545b965d1d9683205b1f3cbc"

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
