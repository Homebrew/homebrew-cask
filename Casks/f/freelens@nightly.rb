cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1-0-nightly-2025-12-29"
  sha256 arm:   "9149762a3ff131f5621a0ae505790be9bb294a4007bb609db3a05d27c041f55b",
         intel: "ff672b6c8c3a12e3a6b0256534568e918bdae9e458783812926daf6d45644347"

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
