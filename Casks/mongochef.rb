cask 'mongochef' do
  version '4.0.4'
  sha256 '2aca68eb9108a244b344eb2bb03d31a3d823df278cad64f6e74a9a36ffc3bbaa'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
