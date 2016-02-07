cask 'firestormos' do
  version '4.7.5.47975'
  sha256 'a7f481e868963e240ff8ba5ee3c46daf694cc5088d07d5c9bc6213a7aa445b95'

  url "http://downloads.firestormviewer.org/mac/Phoenix-FirestormOS-Releasex64-#{version.gsub('.', '-')}.dmg"
  name 'Phoenix Firestorm viewer for Second Life'
  homepage 'http://www.firestormviewer.org'
  license :oss

  app 'FirestormOS-Releasex64.app'

  caveats <<-EOS.undent
    This version does not contain Havok engine (does not matter if you're not a content creator).
    Most problems that crop up during updates can be resolved or fixed by performing a clean install:

      http://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall for instructions.
  EOS
end
