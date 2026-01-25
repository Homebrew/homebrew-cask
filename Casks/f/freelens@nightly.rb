cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1-0-nightly-2026-01-25"
  sha256 arm:   "0417f0d340d97b8cc670e7f55f7927846ae1b4af5c84135568090ea174b6e87f",
         intel: "1f94312c4b4f91a4f09fb0bf696ab058b5483f731ed6334f1702ab1ab25bfd49"

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
