cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.5.4"
  sha256 arm:   "27538fc07b1c17a1a6d72d61643995f5b25c01c451ab3c93b8f7ed320ed8d7d5",
         intel: "d8f7e0a2b1bb68d276e664d9f4a8cd60a0c8b837b9dc07420ad5eda3f6e04495"

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
