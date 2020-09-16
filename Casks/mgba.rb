cask "mgba" do
  version "0.8.3"
  sha256 "6c07914829884f70ad3feb59f5cc70320553f0b2ae9bc4944f6e890cc169632d"

  # github.com/mgba-emu/mgba/ was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-osx.tar.xz"
  appcast "https://github.com/mgba-emu/mgba/releases.atom"
  name "mGBA"
  desc "Game Boy Advance emulator"
  homepage "https://mgba.io/"

  app "mGBA-#{version}-osx/Applications/mGBA.app"

  zap trash: [
    "~/Library/Preferences/com.endrift.mgba-qt.plist",
    "~/Library/Saved Application State/com.endrift.mgba-qt.savedState",
  ]
end
