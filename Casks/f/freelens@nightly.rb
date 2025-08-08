cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-nightly-2025-08-08"
  sha256 arm:   "00f0ecb28bf7d402c5b67cd82d73cb308d37f17599d2b63f04b2b1f068a1d359",
         intel: "dc1be708b74547acce1beefe588b2e48f4649f33f7e240b377795fb1476296d3"

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
