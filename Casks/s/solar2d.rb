cask "solar2d" do
  version "2026.3729"
  sha256 "3f1bf462281e5166f00d201ce6219cdde3a07c13acc752e903f4da959c54e5e6"

  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg",
      verified: "github.com/coronalabs/corona/"
  name "Solar2D"
  desc "Lua-based game engine"
  homepage "https://solar2d.com/"

  livecheck do
    url :url
    regex(/^Solar2D[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  suite "Corona-#{version.minor}"

  zap trash: [
    "~/Library/Application Support/Corona Simulator",
    "~/Library/Application Support/Corona",
    "~/Library/Preferences/com.coronalabs.Corona_Simulator.plist",
    "~/Library/Preferences/com.coronalabs.CoronaConsole.plist",
    "~/Library/Saved Application State/com.coronalabs.Corona_Simulator.savedState",
  ]
end
