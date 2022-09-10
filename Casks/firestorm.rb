cask "firestorm" do
  version "6.6.3.67470"
  sha256 "bb37c3f1ec5f24e4c3938b54fb85336d02832a28ffd8f0fa66bbd940dadd522b"

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-Releasex64-#{version.dots_to_hyphens}.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    url "https://www.firestormviewer.org/mac/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Phoenix-Firestorm-Releasex64-(\d+(?:-\d+)*)\.dmg}i, 1]
      v.tr("-", ".")
    end
  end

  app "Firestorm-Releasex64.app"

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
