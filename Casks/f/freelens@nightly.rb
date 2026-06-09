cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-0-nightly-2026-06-09"
  sha256 arm:   "bded198f978da275fe0d44c60328e9dcde415746b6225117693a8e7177a1eca7",
         intel: "ccab81137abed107cd55e5199d43d8b8593b0618db63dd996ca6e83299c9e76f"

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
