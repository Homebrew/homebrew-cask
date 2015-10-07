cask :v1 => 'goofy' do
  version '2.2.1'
  sha256 '74b95abb0b6a48048c3c5094b3a256bd48f20a9537bbf010a5a10c529b62bbdd'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  name 'Goofy'
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => '696e4bb6f28a12720eecb059cea69fd34c36b855db70ec00853e0f2972027d63'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
