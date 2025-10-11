cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "ed5742dad4d4bd0e156afe968033aa4607ccac1a54b58dced7ed7d9f984e9c85",
         intel: "b5599e417685d380d7efe6a45cb73bf1338dc66a7cea419915b20a81fa7547df"

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
