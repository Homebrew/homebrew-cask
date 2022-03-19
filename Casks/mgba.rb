cask "mgba" do
  version "0.9.3"
  sha256 "38d91f4861d9e05a4e26fea0667061399b488e8783c9d60ea35fbf801b1cfde8"

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
