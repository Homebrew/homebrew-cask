cask "pitch" do
  version "1.26.0,1502213"
  sha256 "4c9624ec23b3b10e16acb857c2d7758e0f058ece63353e53ea66f0ae7ff59ba0"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version.before_comma}-ci#{version.after_comma}.dmg"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  livecheck do
    url "https://desktop-app-builds.pitch.com/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(/Pitch-(\d+(?:\.\d+)*)-ci(\d+).dmg/i)
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
