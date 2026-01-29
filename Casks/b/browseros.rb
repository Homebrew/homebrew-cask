cask "browseros" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0.3,0.38.0"
  sha256 arm:   "7b9ead38d0b0f438e4abed8b2f65abb8da94fff3ee1efa928014349cbc7678c6",
         intel: "d8df17b0efd38a778088865a5665b46e50a8ecd0f734e5527d7313b3138393a6"

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
