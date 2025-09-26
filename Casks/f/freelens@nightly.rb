cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1-0-nightly-2025-09-26"
  sha256 arm:   "9a060d944e80b7293dc9fcd095611ff28195d6210006c9fcfcb925446edbb820",
         intel: "b438e9ba722c13c2ed781bf44bd126c618540d58be626702adcd71529e2380ee"

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
