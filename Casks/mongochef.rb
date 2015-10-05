cask :v1 => 'mongochef' do
  version '3.0.1'
  sha256 'e3b08a066e83d0042219aaa8a83fcd851b0d4e7f57cbdc979fdcd9de4b9cbcff'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
