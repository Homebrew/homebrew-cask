cask :v1 => 'pandoc' do
  version '1.13.1'
  sha256 'd82547f5a6838074381a8e97f0f27984bbdb527e211320fc78791d9a64479b2f'

  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
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
