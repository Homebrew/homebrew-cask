cask "solar2d" do
  version "2024.3711"
  sha256 "fbc80c998d770bb06fe5a2e7b742cb0e4f6cc69b99a3534b8bab5f3415266301"

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
