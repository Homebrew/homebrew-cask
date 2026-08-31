cask "pitch" do
  version "2.142.0,stable.5,8380522"
  sha256 "4a6ab400a3a48b59ead0d7108640a54ab251ca3124da692e27c556a99da17fff"

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
