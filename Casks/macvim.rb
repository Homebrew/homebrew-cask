class Macvim < Cask
  if MacOS.version == :mavericks
    url 'https://github.com/b4winckler/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mavericks.tbz'
    sha256 'f2543860b27b7c0db9407d9d38d4c2fb5cda5b23845a6c121936116ccf8b0d39'
  else
    url 'https://github.com/eee19/macvim/releases/download/snapshot-72/MacVim-snapshot-72-Mountain-Lion.tbz'
    sha256 'f01eb54f73d7d8b750886b706468f234af3d34f9a08f5625cbef20113514f4e5'
  end
  homepage 'http://code.google.com/p/macvim/'
  version '7.4-72'
  link 'MacVim-snapshot-72/MacVim.app'
  binary 'MacVim-snapshot-72/mvim'
  caveats do
    puts <<-EOS.undent
    Note that homebrew also provides a compiled macvim Formula that links its
    binary to /usr/local/bin/mvim. It's not recommended to install both the
    Cask and the Formula of MacVim.

    EOS
    files_in_usr_local
  end
end
