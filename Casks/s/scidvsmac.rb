cask "scidvsmac" do
  version "4.24"
  sha256 "9ef2941b782208af05cdb286c08324013936991387da6e8673e74edfefac25aa"

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
end
