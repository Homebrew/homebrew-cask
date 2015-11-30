cask :v1 => 'mongochef' do
  version '3.1.0'
  sha256 '6c67fbad534bba6815c2ce665f91e8e5dc8700f597b6b4cf47789a99db62ed97'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
