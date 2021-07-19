cask "pitch" do
  version "1.35.2,1755516"
  sha256 "dd49510003fa4bd74493ea7d87c868496186a2e06a57d8ed823835421063136c"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.before_comma}-ci#{version.after_comma}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(/Pitch[._-]v?(\d+(?:\.\d+)+)[._-]ci(\d+)\.dmg/i)
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
