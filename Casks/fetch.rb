cask 'fetch' do
  version '5.7.7'
  sha256 '8b543edd7b31cb519fa8d898c6b5b6095cd3b725a477ce32238e08002ac77681'

  url "http://fetchsoftworks.com/fetch/download/Fetch_#{version}.dmg?direct=1"
  name 'Fetch'
  homepage 'https://fetchsoftworks.com/fetch/'

  app 'Fetch.app'
end
