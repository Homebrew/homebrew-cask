cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-0-nightly-2025-07-20"
  sha256 arm:   "4237ae2188dd01627913b58d11bda754592bee883eac82ee38caec65bafc4830",
         intel: "4b36b9e2a3513319b8653cf4098ee7062b7c907dd0823a5608c1ada3c91caa3b"

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
