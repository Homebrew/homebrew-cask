cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-0-nightly-2025-11-26"
  sha256 arm:   "043df90f847440e67bc0c36a10b0b5b58da569267e61d5427b4b74354e58592a",
         intel: "2a3acd20272e3d82fbedd281a2e40774945f1bd8b757ddd51c165653a4250e7b"

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
