cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.1-0-nightly-2025-07-15"
  sha256 arm:   "47b3c77fa9edd2ee180029c59643795e0359f3582a6512472ed4b2b205d7770f",
         intel: "8816673b3b789cc45c0c4fda3aac85f78de2e3b0239cad7752e1e23badc20fc9"

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
