cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.8.1"
  sha256 arm:   "67b7376ca540788e7e0e01d41530bb8a66b75494d8f23a58f3a438b78c55773f",
         intel: "11967320e22ad45cc36b2a89a18f8fd1a6b624282117da5bb5c64264b8b8ad3a"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
