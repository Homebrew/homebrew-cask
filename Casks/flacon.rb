cask "flacon" do
  version "9.4.0"
  sha256 "89bc81a1432e542c7c354e62d5d649a4139d12e317cbc34786e2c22f6eb92c3d"

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
