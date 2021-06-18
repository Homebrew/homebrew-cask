cask "mgba" do
  version "0.9.1"
  sha256 "e8b3cbce915a9b3fe11be27dab1d5cc0749d8ab69f93c520be2ae29cf81c36cc"

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
