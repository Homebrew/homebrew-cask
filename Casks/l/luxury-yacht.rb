cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.0"
  sha256 arm:   "fc7c5eae4548aaa9251c1f5d59f730dbbff2756cc901de4b02d11437799e7eb1",
         intel: "6617e35c7a1c32394ef16e1f98d28b7fa815ed47b3b52b82ebb5d85308352025"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
