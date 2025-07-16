cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.1-0-nightly-2025-07-16"
  sha256 arm:   "9e14e92ce0e7fec81fe9611eddb6e7ffd5354da7813af83d9f67995770948fbf",
         intel: "998425a26c1d6fc9df53ec15ebe7ce87ece238625253d450a4758652e084d47c"

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
