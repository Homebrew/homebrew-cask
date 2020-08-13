cask "firestorm" do
  version "6.3.9.58205"
  sha256 "085a09c5edcd17963a1a66cd940088d8077c93a8aa11cd8661230cde97919fd1"

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  appcast "https://www.firestormviewer.org/mac/"
  name "Phoenix Firestorm viewer for Second Life"
  homepage "https://www.firestormviewer.org/"

  app "Firestorm-Releasex64.app"

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
