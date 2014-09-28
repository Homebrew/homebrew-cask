class Lyx < Cask
  version '2.1.2'
  sha256 '2230c29e1ac0334b2c58bf072c28bbd9a9e2c98eaab90adf04d25f9e12dd3730'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt4-x86_64-cocoa.dmg"
  homepage 'http://www.lyx.org'

  app 'LyX.app'
end
