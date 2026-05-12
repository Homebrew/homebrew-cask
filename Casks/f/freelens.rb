cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "769fe40fa34798afc2359105d812a1e8d0028414cc82364b63b788c21c968169",
         intel: "c4a1ff44147689fdfb5a2aae082f994b11b2a05177da220fbd874635f0db0c5c"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
