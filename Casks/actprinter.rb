cask :v1 => 'actprinter' do
  version '3.2.2'
  sha256 '6e49ac75f8a660e33b3f0d3033bf9788cfeef5a0838faad93f06b21af0efb2ee'

  # actprinter.com is the official download host per the vendor homepage
  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  name 'ACTPrinter'
  appcast 'http://www.houdah.com/ACTPrinter/updates/profileInfo.php',
          :sha256 => '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
  homepage 'http://houdah.com/ACTPrinter/'
  license :gratis

  app 'ACTPrinter for Mac.app'
end
