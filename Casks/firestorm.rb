cask 'firestorm' do
  version '6.3.2.58052'
  sha256 '4380b8daa533fe2185b2ec436e041386dfa26d9f13cb71e768a719807fa99d13'

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  appcast 'https://www.firestormviewer.org/mac/'
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'https://www.firestormviewer.org/'

  app 'Firestorm-Releasex64.app'

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
