cask "solar2d" do
  version "2026.3733"
  sha256 "d6dac1ad97c2f29e20f570efcd6c721fe396c197edb66c6d40949a8c6f63f401"

  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg"
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

  depends_on :macos

  suite "Corona-#{version.minor}"

  zap trash: [
    "~/Library/Application Support/Corona Simulator",
    "~/Library/Application Support/Corona",
    "~/Library/Preferences/com.coronalabs.Corona_Simulator.plist",
    "~/Library/Preferences/com.coronalabs.CoronaConsole.plist",
    "~/Library/Saved Application State/com.coronalabs.Corona_Simulator.savedState",
  ]
end
