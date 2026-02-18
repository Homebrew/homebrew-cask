cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.8"
  sha256 arm:   "fa99e403c55378c77b1c2b39ae63101adeb117d30686589a6a3f02bec04dea5d",
         intel: "ec189a836d425a59006d907f73b8d445e3f06a1d17b330dbb7ad8699358552ae"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
