cask "scidvsmac" do
  version "4.27"
  sha256 "6a9564f30b8e8725a0569d83d39cb8ac14f0cd053f0d75cbb0649fc4def73a2c"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.x64.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "https://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.x64\.dmg/i)
  end

  depends_on :macos

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
