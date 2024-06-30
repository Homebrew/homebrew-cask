cask "scidvsmac" do
  version "4.25"
  sha256 "821f251f60798a9d31cc83a72119b012c27b06b76c533fd36636f3f917a106b5"

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
