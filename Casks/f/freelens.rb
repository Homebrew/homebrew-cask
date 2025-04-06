cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0"
  sha256 arm:   "9a5d538a75042c475b6bf7a6b31c9d74bc1600799a58fe25a2a7f27d82cb63d6",
         intel: "1749238f50124254046ba6a02fabe4bf1de0846bcf4631a583f0f13e6d245cd1"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :high_sierra"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
