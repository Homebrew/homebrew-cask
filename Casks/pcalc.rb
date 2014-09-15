class Pcalc < Cask
  version '3.9'
  sha256 '3d0b3c034c944e2d007f95d201fd999d3c98c29fc7e65105bdaeb04c3b7b8310'

  url 'https://s3.amazonaws.com/tlasystems/PCalc-3.9.dmg'
  appcast 'http://www.pcalc.com/PCalcSUFeed.xml'
  homepage 'http://www.pcalc.com/index.html'

  app 'PCalc.app'
end
