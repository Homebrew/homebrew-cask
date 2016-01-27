cask 'mongochef' do
  version '3.3.0'
  sha256 '9d193c1e1488485a7e130d5a319387fe8835f79b9c8614981a2fa80c49e2ec29'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
