cask 'firestorm' do
  version '6.2.4.57588'
  sha256 '3fad8ab8e2980d1d3fa13af8cec7d765177e082d1575d07c50cd9f038bec8521'

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-releasex64_#{version.dots_to_underscores}_x86_64.dmg"
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
