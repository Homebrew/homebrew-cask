cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0.14"
  sha256 arm:   "82389c8b79b98c83587f1caa49e46c1521b244b2464e6c94be3fc6e37b7a052e",
         intel: "1704f9d80d2a318008d4ff5c43e15079c998917501dc5e5064bf898319b38fed"

  url "https://github.com/browseros-ai/BrowserOS/releases/download/v#{version}/BrowserOS_v#{version}_#{arch}.dmg",
      verified: "github.com/browseros-ai/BrowserOS/"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  depends_on macos: ">= :big_sur"

  app "BrowserOS.app"

  zap trash: [
    "~/Library/Application Support/BrowserOS",
    "~/Library/Caches/BrowserOS",
    "~/Library/Preferences/com.browseros.BrowserOS.plist",
  ]
end
