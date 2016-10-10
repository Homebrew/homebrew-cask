cask 'firestormos' do
  version '4.7.7.48706'
  sha256 '5d8d46f99247abf0c1a1a0854859cb061fb24c538785296d3dd9d6c7b00b38d1'

  url "http://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64-#{version.dots_to_hyphens}.dmg"
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'http://www.firestormviewer.org'

  app 'FirestormOS-Releasex64.app'

  caveats <<-EOS.undent
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      http://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
