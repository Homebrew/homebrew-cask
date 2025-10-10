cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.26.1"
  sha256 arm:   "f5ee40b027474441ecbf2b91230cac35486c668c6ae1fd1c9b68f5270d21a1b2",
         intel: "4367f131de9e27bbacf822dc6307b01c665ff06b4c4d2807e4ed1dc379febd67"

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
