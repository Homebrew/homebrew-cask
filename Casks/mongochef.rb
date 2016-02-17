cask 'mongochef' do
  version '3.4.0'
  sha256 '61b7289d3d4d8d3a94da0e612cdc9a2f3c1abf521a2d63dd3d9111aa1ad64682'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
