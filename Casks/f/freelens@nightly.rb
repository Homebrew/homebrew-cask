cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-0-nightly-2026-06-16"
  sha256 arm:   "ad57d10211f3fe0a78f9c10dbb568fc9e75ec8cb0ab3e8d516844e3eedf2b754",
         intel: "e8e3dc5d3952d829f5e7a606ccc12626dec269446081d1f324a3cf310f91e83f"

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
