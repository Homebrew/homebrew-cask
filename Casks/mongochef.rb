cask :v1 => 'mongochef' do
  version '3.2.3'
  sha256 '76a1fc65473c5a4b6888d5d23584c6339dcdd952edfe53cbe82fa6ef677a6d93'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
