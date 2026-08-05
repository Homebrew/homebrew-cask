cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.4"
  sha256 arm:   "2c750b4ee71b7f32294c43124f3018dafc85720fb3eeff9ac9a36290dd65a60b",
         intel: "42ab774e608a49fa7d81a044d479f4e651e86a9b4c66199646c9db608f063bfc"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
    "~/Library/Caches/com.wails.luxury-yacht",
    "~/Library/Preferences/com.wails.luxury-yacht.plist",
    "~/Library/WebKit/com.wails.luxury-yacht",
  ]
end
