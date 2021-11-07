cask "firestorm" do
  version "6.4.21.64531"
  sha256 "b3f1f26fc3f7dde7c5413109effb6193e16596f2e572a3451fa7d6cfe8efcd55"

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
