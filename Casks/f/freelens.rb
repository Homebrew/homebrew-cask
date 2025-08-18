cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3"
  sha256 arm:   "c40625d6dca2cfe4e349b231a1cca65d244e3a2b82ab94cbeed92c5ddb0e30c7",
         intel: "bb8c8f2a15ea358fb5e7691111f4e47eefdc3e5d9ee4b594d225afd2db289ced"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
