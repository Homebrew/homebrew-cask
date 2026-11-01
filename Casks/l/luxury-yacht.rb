cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.8.3"
  sha256 arm:   "d670c3ad6050d3cac42688d716dfc40e88144139a4d4e9f2a3e39f2aa013c94c",
         intel: "55ae11c0a59760c7904419f7989114f1cbb5060f5badd43356f0e355d3b3c7a8"

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
