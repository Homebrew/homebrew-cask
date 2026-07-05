cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "3d897dd5a4d18dbaf6edf6718b936053e2af876adb4cee6dd3ebdb6a96afc8fd",
         intel: "d44b1ed53fc0fb0bc66021c29678d24b43a3769c45677d23ca56d9da3e639da3"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
