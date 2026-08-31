cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0"
  sha256 arm:   "5633b6aa0891985635dc1f743ffa25f2f0136173d805a2e28a7aa3bf62947b22",
         intel: "65f08d0b69841919f293a762dd0ff8a371e2edb61b5e445b5a06e546320fe1a9"

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
