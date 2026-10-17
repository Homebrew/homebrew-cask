cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.7.1"
  sha256 arm:   "1574e3c3b3558de2fbe2b0120107c4f6d60d5f267372086394b10b494dfab207",
         intel: "611863839d5286dac57edcb0e60869615006b70b550c7a424035b9bc15d49d91"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
