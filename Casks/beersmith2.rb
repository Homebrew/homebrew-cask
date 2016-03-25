cask 'beersmith2' do
  version '2.2.12'
  sha256 'e4aa64af9e9c65e0cfe132de67ab580d0c3b2f527d598fcda0d9b2cc84b74da6'

  url "https://s3.amazonaws.com/BeerSmith2-2/BeerSmith#{version.gsub('.', '_')}_64.dmg"
  name 'BeerSmith2'
  homepage 'http://beersmith.com'
  license :commercial

  app 'BeerSmith2.app'
end
