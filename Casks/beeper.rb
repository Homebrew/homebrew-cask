cask "beeper" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.19.15"
  sha256 :no_check

  url "https://download.beeper.com/mac/dmg/#{arch}"
  name "Beeper"
  desc "Universal chat app powered by Matrix, unifying 15 different chat networks"
  homepage "https://www.beeper.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Beeper(?:%20|[ ._-])?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
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
