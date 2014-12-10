cask :v1 => 'instacast' do
  version '2.0-2663'
  sha256 '1e230737fa756cf216afa28793bb2b43fb4987ba08b1d30b106f610ea075052e'

  url "http://assets.vemedio.com/software/instacast/Instacast-#{version}.dmg"
  homepage 'http://vemedio.com/products/instacast-mac'
  license :unknown    # todo: improve this machine-generated value

  app 'Instacast.app'
end
