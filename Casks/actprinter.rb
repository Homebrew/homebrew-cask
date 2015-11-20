cask :v1 => 'actprinter' do
  version '3.2.2'
  sha256 '6e49ac75f8a660e33b3f0d3033bf9788cfeef5a0838faad93f06b21af0efb2ee'

  # actprinter.com is the official download host per the vendor homepage
  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  name 'ACTPrinter'
  homepage 'https://www.houdah.com/ACTPrinter/'
  license :gratis

  app 'ACTPrinter for Mac.app'
end
