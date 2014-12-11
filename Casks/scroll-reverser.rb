cask :v1 => 'scroll-reverser' do

  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.6.1'
    sha256 'babce7e360ec76a797ac8843e20d5b75a0475807c487df87c01bc29cd8050584'
    appcast 'http://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            :sha256 => 'ed8e2d6748eb8b79897ca1b84a1597e86afb7845b469a278c83c07e08e6eb886'
  end

  url "https://d20vhy8jiniubf.cloudfront.net/downloads/ScrollReverser-#{version}.zip"
  homepage 'https://pilotmoon.com/scrollreverser/'
  license :unknown    # todo: improve this machine-generated value

  app 'Scroll Reverser.app'
end
