cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "d14150d9e2f2fcc95f73a9c915c3ffcc3a3ee8de92db38110e1a255cfcf7a134",
         intel: "7f8d66bc7b98882fd8bd20b50ace6266c927f663ea5747774e7f10a82b4b7c59"

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
