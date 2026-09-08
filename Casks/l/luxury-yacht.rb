cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.1"
  sha256 arm:   "60eef0e0a02858c648494de2757d8dc956047111675470f3081111ca6a272688",
         intel: "1c94eceb59308fce676b9477ef148c9dfed9822d09e3ac0e29df5f41a8a8d653"

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
