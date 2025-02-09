cask "solar2d" do
  version "2025.3717"
  sha256 "10edbb3d9d0a2d0b9953a0745b89cacbd28c761d3fd2adc608cd4acb939440cb"

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
