cask 'firestormos' do
  version '6.0.2.56680'
  sha256 'f8e5fa3b1a72aff67ce91d44f82f536d898a9b4c3a818414799ccb8d288e7e97'

  url "https://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  appcast 'https://www.firestormviewer.org/mac-for-open-simulator/'
  name 'Phoenix Firestorm viewer for OpenSim'
  homepage 'https://www.firestormviewer.org/'

  app 'FirestormOS-Releasex64.app'

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    This version is only needed if you visit OpenSim grids; should not be used for uploading mesh to Second Life.
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.firestormviewer.org/fs_clean_install for instructions.
  EOS
end
