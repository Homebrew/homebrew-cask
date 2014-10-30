class Madruby < Cask
  version '1.0.3'
  sha256 'a0d45b892b28e9fd4e5ae17578e3afc6e385307635c422d71292d47b177d7480'

  url "http://www.wingsforpigs.com/downloads/MadRuby_#{version}.dmg"
  homepage 'http://www.wingsforpigs.com/MadRuby/MadRuby.html'
  license :unknown

  app 'MadRuby.app'
end
