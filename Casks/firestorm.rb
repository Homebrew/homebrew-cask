cask "firestorm" do
  version "6.4.13.63251"
  sha256 "ea560607ce3a8262540951c33fdc250096fdccb66d056dfdb36e85f11bb8b087"

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    url "https://www.firestormviewer.org/mac/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Phoenix-Firestorm-Releasex64_(\d+(?:_\d+)*)_x86_64\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "Firestorm-Releasex64.app"

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
