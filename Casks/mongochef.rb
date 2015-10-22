cask :v1 => 'mongochef' do
  version '3.0.5'
  sha256 'b11a778f6dbc280b2e6036e855f2f574bb94355ddcb3ff70b8b016f85d533e4c'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
