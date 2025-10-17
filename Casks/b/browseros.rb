cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "298cbb10f6f12e2398f73b14fe41515c0a9d4e2e0c9b49e4056f6e1aa4230afd",
         intel: "f21eceb19941df4baa204d8c6b8804d9bc31ce47b7bc0e3eb143fb81329e970f"

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
