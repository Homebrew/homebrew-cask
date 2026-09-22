cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.2"
  sha256 arm:   "7a7f63c0f0b8ae01fa9d15f3d478ecce71c7491b51cf06c893726e13013cb418",
         intel: "5b3f63abf885dca6ff2241bb8a5745cc09a277742cfd4dfece274514d4e4b0da"

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
