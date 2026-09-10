cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.3"
  sha256 arm:   "a22d4ed75d13ced20b1741a0794d6a11ee795780716a8518f0c8e83f66999edd",
         intel: "0c0a18bbea1c61b5c2b46b09b1f2d06d0f9b3a111bd3367a9de71978da369c22"

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
