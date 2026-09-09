cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.2"
  sha256 arm:   "6d7b4d3136e027998115eeeffb0dc0dce3904b34c59e1c1a1a656d8bf2a86fdc",
         intel: "17b5b5ec4026fc65a84df197853384cddafe638f27310a0eea871666dbd54162"

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
