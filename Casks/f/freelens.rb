cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0"
  sha256 arm:   "245873221a9dbdc637b2c6ca0682b211c9d7eb90bd3b255f4e71aeb9924302ec",
         intel: "d61b52990fa9ecb3338b0ae81b869563b1d5d59a0b6756010f0d841c8e1b87e9"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
