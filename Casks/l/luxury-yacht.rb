cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.6"
  sha256 arm:   "20144d62f405d42c012b36d1f24f71f6685bcce1a4d2a8295d4edabbfe0a0588",
         intel: "883996b9c75523adf6efee2d47dbca727f1c1f85d21e95d442eaeabfe6ab41e8"

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
