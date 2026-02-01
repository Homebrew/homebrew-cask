cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1-0-nightly-2026-02-01"
  sha256 arm:   "512e2268e9cba1ba492316b7c612ecb60b7f0d93c376835ad578279227b5fc3c",
         intel: "f38feff6009d0c3574ecf924df9689557b8ec973019fd44a201bdf92ad4bbde2"

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
