cask :v1 => 'mongochef' do
  version '3.0.4'
  sha256 '3a474f41a1b600428a9012ed240ad24c84859c424c7126d0bb0c44084a107596'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
