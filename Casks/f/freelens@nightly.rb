cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1-0-nightly-2025-12-30"
  sha256 arm:   "51cd85c23142f7a7627afc61d7c68638e757807b4e38b6af8beaa6eb99e97f0f",
         intel: "0be77f3e5d10d94f10a33bfcf06b21d90484b9372c5d83388acf99c61aff9a5f"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
