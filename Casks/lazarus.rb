cask :v1 => 'lazarus' do
  version '1.2.6-20141012'
  sha256 '0b1202e18e7abb5062f7f620882bdd5f8ddf89c07123b9882e1f099e60bc615e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/lazarus/lazarus-#{version}-i386-macosx.dmg"
  homepage 'http://lazarus.freepascal.org/'
  license :oss

  pkg 'lazarus.pkg'

  uninstall :pkgutil => 'org.freepascal.lazarus.www'
end
