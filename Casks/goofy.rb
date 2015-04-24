cask :v1 => 'goofy' do
  version '2.0.3'
  sha256 '637d5df454d8c000f90082b726274ef29592801e7b1eca38873aa8f99de3857f'

  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  appcast 'https://dani.taurus.uberspace.de/goofyapp/update.xml'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
