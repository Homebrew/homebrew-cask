cask "pitch" do
  version "1.57.2,2508908"
  sha256 "8785f5d1e53999660e4ea402f17af5cb84906444af361db987ae196ef67d7c56"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.csv.first}-ci#{version.csv.second}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(/Pitch[._-]v?(\d+(?:\.\d+)+)[._-]ci(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Pitch.app"

  zap trash: [
    "~/Library/Application Support/Pitch",
    "~/Library/Logs/Pitch",
    "~/Library/Preferences/io.pitch.pitch-macos.plist",
    "~/Library/Saved Application State/io.pitch.pitch-macos.savedState",
  ]
end
