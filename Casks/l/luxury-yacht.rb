cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.3"
  sha256 arm:   "641068033ab26f5c06ae60fdbdf1720152dc7d8b8eba5d91aeb6cac491da4098",
         intel: "cdcf25ad72948f43f6aef950c2dae207de3953857f9a9dd711d4006f62d4321f"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
