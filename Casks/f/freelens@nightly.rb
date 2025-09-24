cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0-0-nightly-2025-09-24"
  sha256 arm:   "7518892550c1c5ec656ba8a83c2879a8c7ea39e1fd5e964034effc5ec3202e4e",
         intel: "9563ab74895dc764aac01e48ab71538d3c0d6993b3735d51a8e30044c6e9313e"

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
