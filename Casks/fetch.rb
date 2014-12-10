cask :v1 => 'fetch' do
  version '5.7.3'
  sha256 'fd75b4ab78211cc067906341576657e41e130080ce05a1f20947a6acbb816ea3'

  url "http://fetchsoftworks.com/fetch/download/Fetch_#{version}.dmg?direct=1"
  homepage 'http://fetchsoftworks.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Fetch.app'
end
