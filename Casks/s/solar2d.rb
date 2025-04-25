cask "solar2d" do
  version "2025.3719"
  sha256 "25996d3774e1c2e459d07c79035c2d223c972eb2cbfce35e06dcdd0b9b6c4a3e"

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
