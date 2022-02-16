cask "pitch" do
  version "1.57.3,2546277"
  sha256 "89cae692935d3a8117d0e78bd421b91be4c3f1e36e53d692c6b51e94da029e2d"

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
