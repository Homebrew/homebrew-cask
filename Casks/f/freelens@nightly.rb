cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-0-nightly-2025-07-13"
  sha256 arm:   "3510bc043549e97e1f355f6ec60065d76f43c8707920b76b5c29e71964640bd2",
         intel: "8372c84e983993d3311c15bdee2db805643c8d2557ff88eafc6fdfebc0ebbcba"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
