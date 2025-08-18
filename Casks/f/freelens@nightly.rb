cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3-0-nightly-2025-08-18"
  sha256 arm:   "d62acda7e0188a6c9d198582a8962d4f66caab23ce70430f7b0c4a48a091bd0a",
         intel: "7c4181176d04181b40dad975a3ef54fe2448507329e9962e33ec65462e348ee3"

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
