class Pandoc < Cask
  version '1.13'
  sha256 'eee7e5187321c03da5e81de7b0abf31520d5e7430667ec2ce66a2ac0f172be59'

  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  homepage 'http://johnmacfarlane.net/pandoc'

  install "pandoc-#{version}-osx.pkg"
  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'
  caveats do
    puts <<-EOS.undent
    Note that homebrew also provides a compiled pandoc Formula that links its
    binary to /usr/local/bin/pandoc. It's not recommended to install both the
    Cask and the Formula of Pandoc.
    EOS
  end
end
