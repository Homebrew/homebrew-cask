cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.39.0.3,0.39.0"
  sha256 arm:   "a14b71d5e786575db55d60536a7c6536be440af250b4be3134f190ef97fdf1b6",
         intel: "8e495d931bcb850fa399bf828b7e5db9fa472e5a3c299461c297888d4c721329"

  url "https://github.com/browseros-ai/BrowserOS/releases/download/v#{version.csv.second || version.csv.first}/BrowserOS_v#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/browseros-ai/BrowserOS/"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/BrowserOS[._-]v?(\d+(?:\.\d+)*)[._-]#{arch}\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "BrowserOS.app"

  zap trash: [
    "~/Library/Application Support/BrowserOS",
    "~/Library/Caches/BrowserOS",
    "~/Library/Preferences/com.browseros.BrowserOS.plist",
  ]
end
