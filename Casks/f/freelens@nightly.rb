cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2-0-nightly-2026-03-24"
  sha256 arm:   "d3e91582e4d2af65f8489360bbe028936af99350c540c80efba6ff8473bfda6e",
         intel: "b015319fcb0791b08a8f11e7719ba8cc000bdecd22a15acbe16d577fc0f90566"

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
