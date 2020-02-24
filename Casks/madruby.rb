cask 'madruby' do
  version '1.0.3'
  sha256 'a0d45b892b28e9fd4e5ae17578e3afc6e385307635c422d71292d47b177d7480'

  url "https://www.wingsforpigs.com/downloads/MadRuby_#{version}.dmg"
  appcast 'https://www.wingsforpigs.com/MadRuby/Download.html'
  name 'MadRuby'
  homepage 'https://www.wingsforpigs.com/MadRuby/MadRuby.html'

  app 'MadRuby.app'
end
