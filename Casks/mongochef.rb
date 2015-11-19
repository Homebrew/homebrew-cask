cask :v1 => 'mongochef' do
  version '3.0.7'
  sha256 'ba29d788f619ab11157a5a379a6aca03b523b9e697f7956c8af25dbd20b0d1cb'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
