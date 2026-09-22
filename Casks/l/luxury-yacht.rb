cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.3"
  sha256 arm:   "1da4a1a89c8ebb9a9da8be9d50ad31a68930b041a264eceb1be0c731aba547ef",
         intel: "37c7bb0173c0dcd8a511f906b2cb81664bd00e1d8b7359e6b14f51b3c628d8eb"

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
