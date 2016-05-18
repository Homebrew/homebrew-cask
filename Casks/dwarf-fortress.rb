cask 'dwarf-fortress' do
  version '0.43.01'
  sha256 '7fe378b7aeee67f10a1f88a2341b8724edbf91795fd928506f01dfb403304d43'

  url "http://www.bay12games.com/dwarves/df_#{version.sub(%r{^0+\.}, '').gsub('.', '_')}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'
  license :gratis

  suite 'df_osx', target: 'Dwarf Fortress'
end
