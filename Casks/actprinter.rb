cask :v1 => 'actprinter' do
  version '3.1.4'
  sha256 '7f92b093be3ddc08f5ce00cd19b3edb13c01a4c4626948b204c484123d3e25e8'

  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  homepage 'http://houdah.com/ACTPrinter/'
  license :gratis

  app 'ACTPrinter for Mac.app'
end
