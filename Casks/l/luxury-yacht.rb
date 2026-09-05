cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.0"
  sha256 arm:   "bf996aad6c08cad9efac201937b1790213bbd46798e38e9946a09b9b12c78f53",
         intel: "39d55a719d91eb5d5117550ee2b7b4c880af687c611ce3ce6b4df17b225d5a12"

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
