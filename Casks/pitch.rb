cask "pitch" do
  version "1.39.1,1845212"
  sha256 "142a00dbc108ce39a024fb83dc5a8bb0a75dc785f12b69e34e53c6ade3bec798"

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
