cask "mgba" do
  version "0.10.3"
  sha256 "62969b8b01ac6025424a0c4788ac181d28d340fa60b97f52b336f6e337a14e26"

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
