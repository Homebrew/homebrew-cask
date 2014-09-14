class Latexit < Cask
  version '2.7.3'
  sha256 '45efeeea0d7bde36ba08aa663d6dd10092ec66d7622bccccf73732257e1e82f0'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss'
  homepage 'http://www.chachatelier.fr/latexit'

  link 'LaTeXiT.app'
end
