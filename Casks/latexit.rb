class Latexit < Cask
  version '2.7.2'
  sha256 'e58b0d74e6560fb9d28aeff7e355ab7b2bcd433b474ec3dda0fb3bd3b05b2f2c'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss'
  homepage 'http://www.chachatelier.fr/latexit'

  link 'LaTeXiT.app'
end
