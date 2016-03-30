cask 'dwarf-fortress' do
  version '0.40.24'
  sha256 '653837ed073ffe2825d25bc80f0967d6a8ccb9bf869a188d4bd4320154630936'

  url "http://www.bay12games.com/dwarves/df_#{version.sub(%r{^0+\.}, '').gsub('.', '_')}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'
  license :gratis

  suite 'df_osx', target: 'Dwarf Fortress'
end
