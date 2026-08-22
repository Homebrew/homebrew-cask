cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0"
  sha256 arm:   "d47228eec489c8b3b166b2f5ef202c357feb08de75261ea0c97b700d004ff89f",
         intel: "9e6f7652058a9846d7dad3f179f5c3592db14ef6dfb9257ae5b9e4e0bee0784f"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on macos: :monterey

  app "Luxury Yacht.app"

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
    "~/Library/Caches/com.wails.luxury-yacht",
    "~/Library/Preferences/com.wails.luxury-yacht.plist",
    "~/Library/WebKit/com.wails.luxury-yacht",
  ]
end
