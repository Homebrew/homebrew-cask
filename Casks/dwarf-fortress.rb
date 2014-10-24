class DwarfFortress < Cask
  version '0.40.12'
  sha256 'e493942db5553a33ac38a150ea16dfb9748192a3f7c1961a342a7436f64cc6c0'

  url "http://www.bay12games.com/dwarves/df_#{version.sub(%r{^0+\.},'').gsub('.','_')}_osx.tar.bz2"
  homepage 'http://www.bay12games.com/dwarves/'
  license :unknown

  # todo: should this be
  #
  #    suite 'df_osx', :target => 'Dwarf Fortress'
  #
  # ?
  artifact 'df_osx/df', :target => 'Dwarf Fortress/df'
end
