cask "pitch" do
  version "1.55.1,2401913"
  sha256 "4447147a95ff374619143763ed119ec7dd71a9e144a2774967b911dbb08f4dbb"

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
