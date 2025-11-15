cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "fd72ee98e84a1bb8fc72e271260a3bae3de9ed9b97dacde7a151657444628da1",
         intel: "1b388bf58c6ba8ab7c2c9de8c5024ef08b400f22ffa99143248fe9a3d1981423"

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
