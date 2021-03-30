cask "mgba" do
  version "0.9.0"
  sha256 "a6f32e1caef8ed6482ba3c8bc68fdc5643a00e402a5a99ad4c651a82d9631789"

  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-osx.tar.xz",
      verified: "github.com/mgba-emu/mgba/"
  name "mGBA"
  desc "Game Boy Advance emulator"
  homepage "https://mgba.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "mGBA-#{version}-osx/Applications/mGBA.app"

  zap trash: [
    "~/Library/Preferences/com.endrift.mgba-qt.plist",
    "~/Library/Saved Application State/com.endrift.mgba-qt.savedState",
  ]
end
