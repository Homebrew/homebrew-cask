cask "aexol-remote-mouse" do
  version "1.3,5"
  sha256 :no_check

  url "https://remotemouse.aexol.com/rmt.dmg"
  name "Aexol Remote Mouse"
  homepage "https://remotemouse.aexol.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Remote Mouse for Mac.app"

  caveats do
    requires_rosetta
  end
end
