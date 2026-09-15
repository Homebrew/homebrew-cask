cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.3.0"
  sha256 arm:   "a2d80778a92683e149a7cb5f09d0e58cea43b123df8fa2a82c44770dc5801e2b",
         intel: "87f6cef992c25eb8a9544b4bb0129966e73408925955dae5e71ce850cc8d59a4"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on macos: :monterey

  app "Luxury Yacht.app"

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
    "~/Library/Caches/app.luxury-yacht.desktop",
    "~/Library/Caches/com.wails.luxury-yacht",
    "~/Library/Preferences/com.wails.luxury-yacht.plist",
    "~/Library/WebKit/app.luxury-yacht.desktop",
    "~/Library/WebKit/com.wails.luxury-yacht",
  ]
end
