cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0"
  sha256 arm:   "064252ddf405b2e0539cd70814b9c9fe1402e08f1121237612e3b9ab0cea8ba8",
         intel: "8e97eb714e224380a518ee86576eeaca0dbd399352d428141256ecbbf7b90c1f"

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
