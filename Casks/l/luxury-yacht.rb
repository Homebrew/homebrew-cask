cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.8"
  sha256 arm:   "34b8294044056f08fe56d57f1d62472bf9a56de980c7c2d42baad9814d5368da",
         intel: "3156c65eb6b44bbc79baaf8d4a3c4a8f2bfca53a5b9e130797c0e045c6099a06"

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
