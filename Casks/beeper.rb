cask "beeper" do
  arch arm: "arm64", intel: "x64"

  version "3.43.31"
  sha256 :no_check

  url "https://download.beeper.com/mac/dmg/#{arch}"
  name "Beeper"
  desc "Universal chat app powered by Matrix, unifying 15 different chat networks"
  homepage "https://www.beeper.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Beeper(?:%20|[ ._-])?(\d+(?:\.\d+)+)(?: - Build ([\dA-z]+))?(?:[._-]#{arch})?\.dmg/i)
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
