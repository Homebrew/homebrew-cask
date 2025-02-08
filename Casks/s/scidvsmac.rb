cask "scidvsmac" do
  version "4.26"
  sha256 "8e39a3d96ae8d0b9e31b72eee9fedc15db696a7ffe0208c594d63bc18914fbae"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.x64.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "https://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.x64\.dmg/i)
  end

  app "ScidvsMac.app"

  zap trash: [
    "~/.scidvspc",
    "~/Library/Preferences/net.sf.scid.plist",
    "~/Library/Saved Application State/net.sf.scid.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
