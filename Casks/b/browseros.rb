cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "1ed7028340884fbeb210efe6a6d5d7f64ae370281637b74511acada99471e6aa",
         intel: "5e7cb2e83bb6bdb1e2f4cbd5b4b78ade306429c5a156bb40f116e7ea2a7b468f"

  url "https://github.com/browseros-ai/BrowserOS/releases/download/v#{version}/BrowserOS_v#{version}_#{arch}.dmg",
      verified: "github.com/browseros-ai/BrowserOS/"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  depends_on macos: ">= :monterey"

  app "BrowserOS.app"

  zap trash: [
    "~/Library/Application Support/BrowserOS",
    "~/Library/Caches/BrowserOS",
    "~/Library/Preferences/com.browseros.BrowserOS.plist",
  ]
end
