cask 'goofy' do
  version '2.2.4'
  sha256 '95c85fb48a89d5f8e0e54ecfd24f3e1829d0cd63758cb2119cefe8e827293e81'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => 'ad286f4d5cbea9e8d5199e1af9e62356c0106be536ca600eb95925348233790e'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
