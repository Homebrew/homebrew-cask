cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-nightly-2026-06-25"
  sha256 arm:   "439e322c45e6fbe3a8e484246f75f19a8077dc5bb263f1924a9c49116cbed6e4",
         intel: "5d99943f43d0a5213c1981b278e1f715772e199106d22600b5a07c14947dac61"

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
