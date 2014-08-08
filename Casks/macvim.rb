class Macvim < Cask
  if MacOS.version >= :mavericks
    url 'https://github.com/b4winckler/macvim/releases/download/snapshot-73/MacVim-snapshot-73-Mavericks.tbz'
  appcast 'http://b4winckler.github.com/macvim/appcast/stable.xml'
    sha256 '557c60f3487ab68426cf982c86270f2adfd15e8a4d535f762e6d55602754d224'
  else
    url 'https://github.com/eee19/macvim/releases/download/snapshot-73/MacVim-snapshot-73-Mountain-Lion.tbz'
    sha256 '7f573fb9693052a86845c0a9cbb0b3c3c33ee23294f9d8111187377e4d89f72c'
  end
  homepage 'http://code.google.com/p/macvim/'
  version '7.4-73'
  link 'MacVim-snapshot-73/MacVim.app'
  binary 'MacVim-snapshot-73/mvim'
  caveats do
    puts <<-EOS.undent
    Note that homebrew also provides a compiled macvim Formula that links its
    binary to /usr/local/bin/mvim. It's not recommended to install both the
    Cask and the Formula of MacVim.

    EOS
    files_in_usr_local
  end
end
