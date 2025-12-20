cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "d2ef2f936fe0168b89c6f024a8ad93486963bce984304a7550df3fd9a6826a53",
         intel: "7d773227fdeeed2ac49adcfe296a03794f2bdd4a7a210f6866b06a0221277cde"

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
