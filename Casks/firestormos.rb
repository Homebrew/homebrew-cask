cask 'firestormos' do
  version '5.0.1.52150'
  sha256 'fd9d432b170485368931944b30798259714eb9bceaa9b10cea48dbcf66036c03'

  url "http://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64-#{version.dots_to_hyphens}.dmg"
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'http://www.firestormviewer.org/'

  app 'FirestormOS-Releasex64.app'

  caveats <<-EOS.undent
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      http://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
