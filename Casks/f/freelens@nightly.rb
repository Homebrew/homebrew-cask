cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1-0-nightly-2026-02-07"
  sha256 arm:   "db698e2996f37b558e9bb1485e558c3a17edd9aef0b40ee694560ebbe8459530",
         intel: "4a037fb8a452ad35193555e9d7a721617e51a3c637894e3f76b7964a077c74e2"

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
