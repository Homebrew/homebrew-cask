cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-nightly-2026-06-22"
  sha256 arm:   "756112bbdce3bcce07b6b096a25c5f64d72707e71f05ad3b034fc44a83249e61",
         intel: "b15b10b29521e56fa3b49a526e22ea292d38e468a1c10165d092f8f27d6d4891"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
