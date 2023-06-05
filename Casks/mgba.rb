cask "mgba" do
  version "0.10.2"
  sha256 "c8971fe387b5fcbc3aa9a4f5aaf514290a658b483b5e97f82cad198f9142fd38"

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
