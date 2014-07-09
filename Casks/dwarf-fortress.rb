class DwarfFortress < Cask
  version '0.40.01'
  sha256 'c4f729f094790671b1fde995c02c5d547d652d87790785b13a6cdc9f35dec6be'

  url 'http://www.bay12games.com/dwarves/df_40_01_osx.tar.bz2'
  homepage 'http://www.bay12games.com/dwarves/'
  
  link 'df_osx/df', :target => 'Dwarf Fortress/df'
end
