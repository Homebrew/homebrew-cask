cask "mgba" do
  version "0.10.1"
  sha256 "0762ced759bfdb8617adf2585a87323730d14e1df53ed016c28f711c0b6e4e25"

  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-macos.dmg",
      verified: "github.com/mgba-emu/mgba/"
  name "mGBA"
  desc "Game Boy Advance emulator"
  homepage "https://mgba.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "mGBA.app"

  zap trash: [
    "~/Library/Preferences/com.endrift.mgba-qt.plist",
    "~/Library/Saved Application State/com.endrift.mgba-qt.savedState",
  ]
end
