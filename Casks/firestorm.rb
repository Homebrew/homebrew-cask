cask "firestorm" do
  version "6.6.8.68380"
  sha256 "d6baf8ca0759e01feb6ce57f1f237d05c26e5ec6f289da598aced2f8d10cc432"

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
    This version does not contain the Havok engine (does not matter if
    you are not a content creator).

    Most problems that crop up during updates can be resolved or fixed by
    performing a clean install. For instructions, see:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall
  EOS
end
