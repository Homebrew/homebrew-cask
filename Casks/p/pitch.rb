cask "pitch" do
  version "2.150.0,stable.1,8575003"
  sha256 "28846f3d553ff149544fdab776c157b7b9e63b805d4ee1b95c4e93fa99ecede8"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.csv.first}-#{version.csv.second}-ci#{version.csv.third}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    regex(/Pitch[._-]v?(\d+(?:\.\d+)+)-([^-]+)-ci(\d+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: :ventura

  app "Pitch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.pitch.pitch-macos.sfl*",
    "~/Library/Application Support/Pitch",
    "~/Library/Logs/Pitch",
    "~/Library/Preferences/io.pitch.pitch-macos.plist",
    "~/Library/Saved Application State/io.pitch.pitch-macos.savedState",
  ]
end
