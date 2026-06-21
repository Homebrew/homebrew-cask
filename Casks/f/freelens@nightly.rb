cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-nightly-2026-06-21"
  sha256 arm:   "8793685e1ec33a0e723cf82206c1504aaf5a27a61aec999865bd3f29b36b2c63",
         intel: "31dec0065baf2c02c8082e2033e4289f8ac7cba6d906a2aea86358aa9561bbc2"

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
