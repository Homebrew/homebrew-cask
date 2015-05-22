cask :v1 => 'actprinter' do
  version '3.2.1'
  sha256 '979768faafd99b5714d3397ef7dd29ff085b3f7c7aac59ea6c96c4f15f0ceb6d'

  # actprinter.com is the official download host per the vendor homepage
  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  name 'ACTPrinter'
  appcast 'http://www.houdah.com/ACTPrinter/updates/profileInfo.php',
          :sha256 => '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
  homepage 'http://houdah.com/ACTPrinter/'
  license :gratis

  app 'ACTPrinter for Mac.app'
end
