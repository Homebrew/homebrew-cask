cask :v1 => 'mongochef' do
  version '2.0.1'
  sha256 'fc99bb76c4cfa3bbc3a6b319d1e362f1c73b0ce8a43a313014443d6b19057bbf'

  url "http://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'http://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
