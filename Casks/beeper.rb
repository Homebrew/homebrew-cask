cask "beeper" do
  version "2.0.3"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://download.beeper.com/mac"
  else
    url "https://download.beeper.com/mac/dmg/arm64"
  end

  name "Beeper"
  desc "Universal chat app powered by Matrix, unifying 15 different chat networks"
  homepage "https://www.beeper.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Beeper(?:%20|[ ._-])?(\d+(?:\.\d+)*)(?:-arm64)?\.dmg/i)
  end

  app "Beeper.app"

  zap trash: [
    "~/Library/Application Support/Beeper",
    "~/Library/Caches/im.beeper",
    "~/Library/Caches/im.beeper.ShipIt",
    "~/Library/Preferences/im.beeper.plist",
    "~/Library/Saved Application State/im.beeper.savedState",
  ]
end
