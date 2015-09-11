cask :v1 => 'mongochef' do
  version '3.0.1'
  sha256 :no_check

  url "http://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'http://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
