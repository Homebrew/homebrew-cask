cask "pitch" do
  version "2.146.0,stable.2,8459000"
  sha256 "512c0e5b5cc0e7e488468f5ba17e843b2a04eebb6f4ab8566294efd9d07135ea"

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

  depends_on macos: :monterey

  app "Pitch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.pitch.pitch-macos.sfl*",
    "~/Library/Application Support/Pitch",
    "~/Library/Logs/Pitch",
    "~/Library/Preferences/io.pitch.pitch-macos.plist",
    "~/Library/Saved Application State/io.pitch.pitch-macos.savedState",
  ]
end
