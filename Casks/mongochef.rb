cask 'mongochef' do
  version '4.0.3'
  sha256 'b8f6932cf4221c1367ee8464afeed99c185ceddf2d3ece396e0320ee6a95fac1'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
