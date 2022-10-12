cask "mgba" do
  version "0.10.0"
  sha256 "deaa6c98c1a5ca4bfce96dda4838668e0d75d6bb49a09d97bce91c0204bd3408"

  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-osx.dmg",
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
