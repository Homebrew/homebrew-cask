cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.8.6"
  sha256 arm:   "a7d2e2a3f6c8b2e578017f76554b37129800dc3a363984f0b41e1a618c398073",
         intel: "bf8edbe9a24f6cd87426ce9bcf931541193fb7c83828aa4c00437d94d7504070"

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
