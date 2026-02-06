cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1-0-nightly-2026-02-06"
  sha256 arm:   "4bd87c1e669ffa88829f7d688ef586e67248c1024be74c62ce352efaab050647",
         intel: "0115e44541b4df5a3382648c6bd823ed99f121274afd74a2687fd018d2af50c6"

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
