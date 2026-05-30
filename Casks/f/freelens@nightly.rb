cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-0-nightly-2026-05-30"
  sha256 arm:   "87e46aac17ed5d266c55a252833d36fd7fc3167fe0596454e6a94734895931e7",
         intel: "901edcbb63bd3cdd35e709682269c98a5589b790f717bbe75ba859bbf18c42b2"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
