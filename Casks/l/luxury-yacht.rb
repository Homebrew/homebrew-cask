cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.5"
  sha256 arm:   "874b5c0b48214f99461b140dc924a74412ad18b8e1904815051e0fb4d5a03238",
         intel: "b257144577323cd8744b96c50e01d0e0e202482010530fbc4bed6baba1a2154b"

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
