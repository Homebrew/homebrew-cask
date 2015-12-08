cask :v1 => 'mongochef' do
  version '3.2.2'
  sha256 'f7ffb913f7e13da8a713275c1e3ea68b77d780b7ed72e8ae63a721584ee09059'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
