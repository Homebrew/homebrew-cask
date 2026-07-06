cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-0-nightly-2026-07-06"
  sha256 arm:   "eed0097e7d58a23cb40aca83119e54a5df80e7910fe086fd5ce557cbb9591e20",
         intel: "dd23245d78b8819cdb5add1d1ecdf6a2af866dfebc020a345a68879eec10a4cb"

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
