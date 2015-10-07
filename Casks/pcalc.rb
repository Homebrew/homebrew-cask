cask :v1 => 'pcalc' do
  version '3.9'
  sha256 '3d0b3c034c944e2d007f95d201fd999d3c98c29fc7e65105bdaeb04c3b7b8310'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/tlasystems/PCalc-#{version}.dmg"
  appcast 'http://www.pcalc.com/PCalcSUFeed.xml',
          :sha256 => '2b582b7aa974e04439df517a5c50dbbce9b5eb30344d4bd4ef3935a7942f4df9'
  name 'PCalc'
  homepage 'http://www.pcalc.com/'
  license :commercial

  app 'PCalc.app'
end
