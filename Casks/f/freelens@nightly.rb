cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4-0-nightly-2025-08-29"
  sha256 arm:   "09183e679c39277dd9599cfff73642567d4a4b462ad0faaeb8f4ffe219fb3c8d",
         intel: "ac1dd369e600c99182e45cf5fa813fb256995c4a0d9aae65f6afdd6d4348b661"

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
