cask :v1 => 'pandoc' do
  version '1.13.2'
  sha256 '02455fba5353568b19d8b0bebbda9b99ba2c943b3f01b11b185f25c7db111b50'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  name 'Pandoc'
  homepage 'http://johnmacfarlane.net/pandoc'
  license :gpl

  pkg "pandoc-#{version}-osx.pkg"

  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'
  caveats <<-EOS.undent
    Note that homebrew also provides a compiled pandoc Formula that links its
    binary to /usr/local/bin/pandoc. It's not recommended to install both the
    Cask and the Formula of Pandoc.
  EOS
end
