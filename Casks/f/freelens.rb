cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.0"
  sha256 arm:   "383664a5f11bcc89d96f33ed57ab48978f26bfb1185ebb4786fa1c06630e55ef",
         intel: "61082cc0a922d83a85f822f3510a1bc644167eced184bc063f929fcf84d5e039"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: [
    "freelens@nightly",
  ]
  depends_on macos: ">= :high_sierra"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
