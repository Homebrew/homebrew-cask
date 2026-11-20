cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.10.0"
  sha256 arm:   "5df65fd8e99a66b00163e6af163cc9fcf0e50cb99301c930200dd08c834ca4a1",
         intel: "fafc95ca83ce6ebe319b9ae3fa487ebf76b34d13edc20ed4e01c1d92b881f9a2"

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
