class ScrollReverser < Cask
  version '1.6.1'
  sha256 'babce7e360ec76a797ac8843e20d5b75a0475807c487df87c01bc29cd8050584'

  url "https://d20vhy8jiniubf.cloudfront.net/downloads/ScrollReverser-#{version}.zip"
  appcast 'http://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml'
  homepage 'https://pilotmoon.com/scrollreverser/'
  license :unknown

  app 'Scroll Reverser.app'
end
