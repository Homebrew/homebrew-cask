cask "firestorm" do
  version "6.5.3.65658"
  sha256 "75d63a29f69ead196be280e34602e065c6f1f9c972d065cd0eb25cd03017f7c0"

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
