cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3-0-nightly-2025-08-16"
  sha256 arm:   "220406bc5f0fc4eea5aa955210e6c0974c2205812a4e95c5c78cef134031c783",
         intel: "ba88b758b378d599dd08754c5a3991fd8d8ebe947dc3d51e86c515b8ced879f7"

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
