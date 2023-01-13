cask "flacon" do
  version "9.5.1"
  sha256 "d5297f2cda050bc38eea89b7830e3744aadb6f5ebc58c41f876f77b0958952ec"

  url "https://github.com/flacon/flacon/releases/download/v#{version}/Flacon_#{version}.dmg",
      verified: "github.com/flacon/flacon/"
  name "Flacon"
  desc "Open source audio file encoder"
  homepage "https://flacon.github.io/"

  livecheck do
    url "https://flacon.github.io/download/feed.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Flacon.app"

  zap trash: [
    "~/Library/Preferences/com.flacon.flacon.plist",
    "~/Library/Preferences/io.github.flacon.plist",
    "~/Library/Saved Application State/io.github.flacon.savedState",
  ]
end
