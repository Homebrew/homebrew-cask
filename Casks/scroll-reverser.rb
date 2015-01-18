cask :v1 => 'scroll-reverser' do

  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7'
    sha256 'acd0e1fe66951299181b2dff8acc772c124ec15df33645a4a9f33d237562716d'
    appcast 'http://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            :sha256 => 'ed8e2d6748eb8b79897ca1b84a1597e86afb7845b469a278c83c07e08e6eb886'
  end

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d20vhy8jiniubf.cloudfront.net/downloads/ScrollReverser-#{version}.zip"
  homepage 'https://pilotmoon.com/scrollreverser/'
  license :gratis

  app 'Scroll Reverser.app'
end
