cask 'mongochef' do
  version '3.5.2'
  sha256 'ccccffe50d18d1d542d61d5232e58deb4bd8c6c3a5f02ba2f7eaf76e0ee59ae9'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
