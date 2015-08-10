cask :v1 => 'goofy' do
  version '2.2.0'
  sha256 'ff15b09a29268312a7c81e3e161f1afd49b61349cf55ae71a253073db1c4940d'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  name 'Goofy'
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => '338569b2fdc43cf91855d09c54b58767da9384f9d8e2d41049bcc125ef414440'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
