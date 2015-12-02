cask :v1 => 'goofy' do
  version '2.2.4'
  sha256 '95c85fb48a89d5f8e0e54ecfd24f3e1829d0cd63758cb2119cefe8e827293e81'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  name 'Goofy'
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => 'fb33fcb13e310a06a718c63cffc9ef70f18859d4c058d3714dd5a50c56080e91'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
