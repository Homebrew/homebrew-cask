cask :v1 => 'scroll-reverser' do
  version '1.6.1'
  sha256 'babce7e360ec76a797ac8843e20d5b75a0475807c487df87c01bc29cd8050584'

  url "https://d20vhy8jiniubf.cloudfront.net/downloads/ScrollReverser-#{version}.zip"
  appcast 'http://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
          :sha256 => 'ed8e2d6748eb8b79897ca1b84a1597e86afb7845b469a278c83c07e08e6eb886'
  homepage 'https://pilotmoon.com/scrollreverser/'
  license :unknown

  app 'Scroll Reverser.app'
end
