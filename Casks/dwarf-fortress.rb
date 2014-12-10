cask :v1 => 'dwarf-fortress' do
  version '0.40.14'
  sha256 'f5c2e841702327af73fbed1f32eeb6ade7c3789ae795e8fa2b6a1a777e927ceb'

  url "http://www.bay12games.com/dwarves/df_#{version.sub(%r{^0+\.},'').gsub('.','_')}_osx.tar.bz2"
  homepage 'http://www.bay12games.com/dwarves/'
  license :unknown    # todo: improve this machine-generated value

  # todo: should this be
  #
  #    suite 'df_osx', :target => 'Dwarf Fortress'
  #
  # ?
  artifact 'df_osx/df', :target => 'Dwarf Fortress/df'
end
