cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1-0-nightly-2025-12-12"
  sha256 arm:   "b710346b6c51d383fa3f82685be5530fa139cc765c095baf5deff64e806135df",
         intel: "9f8969682b0b35fa9359eff7de02cf24c89d6236b3b8393ac95684689bcc6e57"

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
