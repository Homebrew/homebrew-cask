cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.1"
  sha256 arm:   "43aec82f2b3f99a0fcd06a5db5c1c8f1400a06592f2dd2c4cd176eeef25d393c",
         intel: "44e16f8ee4ea24b399d4cd9ca54c7de4c7449a08fddb5dc4fa1aac27016a432d"

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
