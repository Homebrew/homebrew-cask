cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.7"
  sha256 arm:   "ebd2080db51387f4def21f5e055f73a40fecd3d40b20a5b04cb2555ddc813a89",
         intel: "7c39986d1f9c4484e62da769ad94226b4af0297a1cb33135b6de5ecfd32f3781"

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
