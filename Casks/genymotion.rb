cask "genymotion" do
  version "3.4.0"
  sha256 "362013934b2ede115953310cc4d9aba848e8a313b88483c6ab80b6e16991dd98"

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  name "Genymotion"
  desc "Android emulator"
  homepage "https://www.genymotion.com/"

  livecheck do
    url "https://www.genymotion.com/download/"
    regex(/Genymotion\s*Desktop\s*(\d+(?:\.\d+)+)/i)
  end

  app "Genymotion.app"
  app "Genymotion Shell.app"
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"

  zap trash: [
    "~/.Genymobile",
    "~/Library/Caches/Genymobile",
    "~/Library/Preferences/com.genymobile.Genymotion.plist",
    "~/Library/Preferences/com.genymobile.soft.Genymotion.plist",
    "~/Library/Saved Application State/com.genymobile.genymotion.savedState",
    "~/Library/Saved Application State/com.genymobile.player.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
