cask "flacon" do
  version "10.0.0"
  sha256 "9adc97e6a49b4b0c332cc697be2fe137d628d0ad566d9f7f71544aa5e43ffce8"

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
