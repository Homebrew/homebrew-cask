cask :v1 => 'pcalc' do
  version '3.9'
  sha256 '3d0b3c034c944e2d007f95d201fd999d3c98c29fc7e65105bdaeb04c3b7b8310'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/tlasystems/PCalc-#{version}.dmg"
  appcast 'http://www.pcalc.com/PCalcSUFeed.xml',
          :sha256 => '5e84c3bd2c0cfa56ff20dffd5106d761d3073d9d1ea61062524cb4d0e6f369f5'
  name 'PCalc'
  homepage 'http://www.pcalc.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PCalc.app'
end
