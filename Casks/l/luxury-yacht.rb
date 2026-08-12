cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.6"
  sha256 arm:   "7476a27d3c8ada30103513eeac98158156f18e3bb633c0e9edab3849354d0763",
         intel: "3a54a876394fa3bcfa371e21741753bf3f0d307da21d8658d231434315c1982c"

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
