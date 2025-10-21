cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-0-nightly-2025-10-21"
  sha256 arm:   "f7779586b4f5a6ae14c35c86a9abd714da823d18b1601b943cc56964ae612ab6",
         intel: "ab87d39b8bfd1ef31c5801a22e28e78df05cc0c146d2d1e3340d5fd3f0744a78"

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
