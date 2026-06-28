cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.2"
  sha256 arm:   "01122f50c9247542b93bac5da655c9fc990f75ecceff5e87bced8fdb55bacbc2",
         intel: "eaa9ffdd9972ee7be3f57c62854766920b8b5b0d1aed8df6d57bfb1272738e47"

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
