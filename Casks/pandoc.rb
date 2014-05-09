class Pandoc < Cask
  url 'https://github.com/jgm/pandoc/releases/download/1.12.4/pandoc-1.12.4.pkg.zip.OSX.package.zip'
  homepage 'http://johnmacfarlane.net/pandoc'
  version '1.12.4'
  sha256 '86324520853bc6e2ea0d36bf4d3bb4954ff494e99c04b29a5b66803e9cc50c89'
  install 'pandoc-1.12.4.pkg'
  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'
end
