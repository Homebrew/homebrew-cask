cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.5"
  sha256 arm:   "46a39d725da776a7f9237e281517ffa01e6da40d1d1c59ce5366aa183c87a4cc",
         intel: "b662234c01ea540c4ff505b2322c48b9986747443ae0f5bdea2974c7a2411c93"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
    "~/Library/Caches/com.wails.luxury-yacht",
    "~/Library/Preferences/com.wails.luxury-yacht.plist",
    "~/Library/WebKit/com.wails.luxury-yacht",
  ]
end
