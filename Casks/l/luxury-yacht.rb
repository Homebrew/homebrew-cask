cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.17"
  sha256 arm:   "8d3c2f76d4c381c0fa73f3b840a4b37d452373da37239d68596463608c437acc",
         intel: "62df71484a3d15a95d96f893e977c3e9d12f0de71fca90e9600c3dabd0f462ca"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
