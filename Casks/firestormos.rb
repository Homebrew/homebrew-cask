cask 'firestormos' do
  version '5.1.7.55786'
  sha256 '64d65c8e472e9d3de4cccc80bee158f72c09fec7c186b7e9dd43029934cf6a9a'

  url "https://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64_#{version.dots_to_underscores}_x86_64.dmg"
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'https://www.firestormviewer.org/'

  app 'FirestormOS-Releasex64.app'

  caveats <<~EOS
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
