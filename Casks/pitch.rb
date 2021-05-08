cask "pitch" do
  version "1.25.2,1470873"
  sha256 "a8b9145c8947024b4d883e4140a697c890339429904bfc5f53e9db9e5b88b3a1"

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
