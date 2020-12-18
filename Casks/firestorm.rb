cask "firestorm" do
  version "6.4.12.62831"
  sha256 "0c0a7c8e21b9389bc141a18b489a76ac821049f4fa33f0b6ede5b77d23ae33ad"

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
