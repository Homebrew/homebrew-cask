cask "firestormos" do
  version "6.3.9.58205"
  sha256 "7bb23c680a31259b7d7e8d45899421cbfe16fd1a0b245bfe733fc63e8cd6840f"

  url "https://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  appcast "https://www.firestormviewer.org/mac-for-open-simulator/"
  name "Phoenix Firestorm viewer for OpenSim"
  homepage "https://www.firestormviewer.org/"

  app "FirestormOS-Releasex64.app"

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    This version is only needed if you visit OpenSim grids; should not be used for uploading mesh to Second Life.
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.firestormviewer.org/fs_clean_install for instructions.
  EOS
end
