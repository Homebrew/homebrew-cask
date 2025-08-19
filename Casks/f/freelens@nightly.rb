cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4-0-nightly-2025-08-19"
  sha256 arm:   "609e51b608f12ab433446aeca6f262f6ef6b84f41d1d35c2ab6f6f40e618a6d7",
         intel: "1d985ab4ec77c13fa74809cb78df128578ac44e2d31d9b6902ef994a53bb6001"

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
