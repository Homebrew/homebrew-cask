cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1-nightly-2025-09-27"
  sha256 arm:   "140d839cc828e8a26dfb63f5889eab9c9f706b7ade36cd9723a1ca55ae74ce9b",
         intel: "c7b6b671466c05facf27961982e777a2f736e4524cc30f149965fa3512ef7112"

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
