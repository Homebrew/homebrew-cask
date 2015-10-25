cask :v1 => 'goofy' do
  version '2.2.3'
  sha256 '6d57b7c6067c63e3096eb49120138642488a4ff33a902fd9adac44fcfe415700'

  # github.com is the official download host per the appcast feed
  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy.app.zip"
  name 'Goofy'
  appcast 'https://github.com/danielbuechele/goofy/releases.atom',
          :sha256 => 'fb33fcb13e310a06a718c63cffc9ef70f18859d4c058d3714dd5a50c56080e91'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
