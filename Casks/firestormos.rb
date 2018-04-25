cask 'firestormos' do
  version '5.0.11.53634'
  sha256 'f1737cde527eab73822075fd72c6e0ce568d737c557bc854a248c60a10c40ed5'

  url "http://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64-#{version.dots_to_hyphens}.dmg"
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'http://www.firestormviewer.org/'

  app 'FirestormOS-Releasex64.app'

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      http://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
