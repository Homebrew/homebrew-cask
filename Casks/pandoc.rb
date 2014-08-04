class Pandoc < Cask
  version '1.12.4'
  sha256 '86324520853bc6e2ea0d36bf4d3bb4954ff494e99c04b29a5b66803e9cc50c89'

  url 'https://github.com/jgm/pandoc/releases/download/1.12.4/pandoc-1.12.4-osx.pkg.zip'
  homepage 'http://johnmacfarlane.net/pandoc'

  install 'pandoc-1.12.4.pkg'
  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'
  caveats do
    puts <<-EOS.undent
    Note that homebrew also provides a compiled pandoc Formula that links its
    binary to /usr/local/bin/pandoc. It's not recommended to install both the
    Cask and the Formula of Pandoc.
    EOS
  end
end
