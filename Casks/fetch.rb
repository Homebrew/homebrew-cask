cask :v1 => 'fetch' do
  version '5.7.4'
  sha256 '315358b9af19fe6d121a340dbcab7ebe2fcf100568faf8ee739ca50079d3dd2a'

  url "http://fetchsoftworks.com/fetch/download/Fetch_#{version}.dmg?direct=1"
  homepage 'http://fetchsoftworks.com/fetch/'
  license :commercial

  app 'Fetch.app'
end
