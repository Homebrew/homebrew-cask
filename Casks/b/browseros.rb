cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.36.2"
  sha256 arm:   "48f940639d0de182016cbf633ba8b041c9118fb8d7aa1370dda7a51e2df73eee",
         intel: "45e34bce7cee0bd9a8934e16bea8130cb28ee79048207283c188fc4a38aa8567"

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
