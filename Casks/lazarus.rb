cask :v1 => 'lazarus' do
  version '1.0.14'
  sha256 'b371f073ae2b8b83c88c356aed8dd717811ba4d9adfee6623a9a48a9c341531a'

  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-20131116-i386-macosx.dmg"
  homepage 'http://lazarus.freepascal.org/'
  license :oss

  pkg 'lazarus.pkg'

  uninstall :pkgutil => 'org.freepascal.lazarus.www'
end
