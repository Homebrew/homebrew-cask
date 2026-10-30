cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.8.2"
  sha256 arm:   "8ec3b2ecae47f0c74451dbae93dbbaeb1743b33f9bfc7dcbc5c5b37662e30d74",
         intel: "8a045cc9860244a3e8c175dcf118647211890986dcd1e5a86ffe8132c88707ea"

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
