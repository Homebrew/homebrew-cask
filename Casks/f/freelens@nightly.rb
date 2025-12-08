cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.1-0-nightly-2025-12-08"
  sha256 arm:   "5f437487ab0c9c6f55bac54162ba6f7e824f6d24e25d09388674a31cefd8e401",
         intel: "3645d5aa332c89c8d20c1bf1ddaec5cf89d666943549847fd58f89898458d7f4"

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
