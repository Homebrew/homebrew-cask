cask :v1 => 'mongochef' do
  version '3.0.0'
  sha256 'affd66cba8ff8dc287b4f50e61ec346919a188f1c4102e36262d712832b3b14c'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
