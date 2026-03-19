cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2-0-nightly-2026-03-19"
  sha256 arm:   "f1b5a27b180d142ac5bbea6b952260801238b7d823b512d92a4cbe7a1451e25a",
         intel: "b8a265e7bb0e9507f7be60482563cd9d179c7fecf4e0dda297d328a54848d13c"

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
