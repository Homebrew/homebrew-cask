cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.2-nightly-2026-06-29"
  sha256 arm:   "dc209e8e63e8f4a02f2fb2ae74da4b25f110b354d526577ece2e93cf59cfe415",
         intel: "40f42856ce96acb363c00eac778becd61d85c00c38d80b346a9e9d8304f4e59e"

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
