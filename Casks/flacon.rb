cask "flacon" do
  version "9.1.0"
  sha256 "afadeef00b49f648a43935a084e634746635c83bd508c5773ad059f46daa56f7"

  url "https://github.com/flacon/flacon/releases/download/v#{version}/Flacon_#{version}.dmg",
      verified: "github.com/flacon/flacon/"
  name "Flacon"
  desc "Open source audio file encoder"
  homepage "https://flacon.github.io/"

  auto_updates true

  app "Flacon.app"

  zap trash: [
    "~/Library/Preferences/com.flacon.flacon.plist",
    "~/Library/Preferences/io.github.flacon.plist",
    "~/Library/Saved Application State/io.github.flacon.savedState",
  ]
end
