cask "flacon" do
  version "11.2.0"
  sha256 "469e426c48271fc9bbe12f355e5c89300ef6231c2d95f21b1e9fc4eaccea6e8c"

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
