cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1-0-nightly-2025-09-25"
  sha256 arm:   "bfd9a4815211fa8d31a7b725e80ea846fb3c7a502d41c1f63164b960d06f6a6f",
         intel: "f2ab4ea58d22e26a823db82ab11fd51775b923c16560ce86d1790a1e10e5950a"

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
