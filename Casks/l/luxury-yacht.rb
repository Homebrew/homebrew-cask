cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.5.2"
  sha256 arm:   "b704a1a1dad6cb4deea97002ead1de3ab1e61247aef4a261ca792be21e243ae2",
         intel: "07396ae7a0eef19f832f1273feee937b4c39ebd58bbf682f1396e9b2f5f0eb30"

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
