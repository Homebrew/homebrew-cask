cask :v1 => 'actprinter' do
  version '3.2.1'
  sha256 '979768faafd99b5714d3397ef7dd29ff085b3f7c7aac59ea6c96c4f15f0ceb6d'

  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  name 'ACTPrinter'
  homepage 'http://houdah.com/ACTPrinter/'
  license :gratis

  app 'ACTPrinter for Mac.app'
end
