cask 'goofy' do
  version '2.2.5'
  sha256 '392547a2d1ccb069e489453161f376449043921c1a158d3a2bc47169cab79c1d'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => '4acdaa73cad63003f14982b1b2658f610cac4392bf0211697fe70396c5408342'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
