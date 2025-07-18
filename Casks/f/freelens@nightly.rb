cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-0-nightly-2025-07-18"
  sha256 arm:   "bf232ab3eaa93412844567b29417689d8cdd877d1b7961faee89f1bfa149ab02",
         intel: "016fb75952005ddccd25d7c77b27d97e5b0d35a78101498701dbfcfecbf5dc44"

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
