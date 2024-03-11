cask "mgba" do
  version "0.10.3"
  sha256 "dc9d50b81c5dd032970873e267f347b7b5be5e9e6309f6a28a008cca1b8c007c"

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
