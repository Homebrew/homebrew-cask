cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.4"
  sha256 arm:   "863d29cd51d168f11dbe2dad13b397173a17e01794bef5d3997fa04efcd70fb0",
         intel: "8195075b6f29cd879081ef5d620386f6feea2c6f32b63cc8c9ab630722680089"

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
