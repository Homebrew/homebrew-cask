cask :v1 => 'mongochef' do
  version '1.11.2'
  sha256 'd6a0d8cdd68e9fe96be97ba053b4577bca35228657fd809f31bad36151a67a6c'

  url "http://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'http://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
