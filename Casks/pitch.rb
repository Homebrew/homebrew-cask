cask "pitch" do
  version "1.86.0,stable.2,4494312"
  sha256 "05939048892d1dfa082bb95248a23eec3c479c7de1d3dbf70bbdd1690923ee55"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.csv.first}-#{version.csv.second}-ci#{version.csv.third}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    regex(/Pitch[._-]v?(\d+(?:\.\d+)+)-([^-]+)-ci(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second},#{match.third}" }
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
