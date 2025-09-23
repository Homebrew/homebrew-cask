cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0-0-nightly-2025-09-23"
  sha256 arm:   "ab6bc8b6000cbd1b90366c7aa6db5ebf1ea9781ab21a5ca89f5e234d00deadfe",
         intel: "57fa7987832ccf8a77d6b1e12af696557bf72beff4af3a84a02c9b7b2b33d01d"

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
