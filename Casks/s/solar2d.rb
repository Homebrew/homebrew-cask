cask "solar2d" do
  version "2023.3700"
  sha256 "20be3567f8b872cd822f3c329d412a2cd8c50bc037833e96c36b60866e29ad14"

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
    "~/Library/Application Support/Corona",
    "~/Library/Application Support/Corona Simulator",
    "~/Library/Preferences/com.coronalabs.CoronaConsole.plist",
    "~/Library/Preferences/com.coronalabs.Corona_Simulator.plist",
    "~/Library/Saved Application State/com.coronalabs.Corona_Simulator.savedState",
  ]
end
