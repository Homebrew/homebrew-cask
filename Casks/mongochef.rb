cask 'mongochef' do
  version '4.4.2'
  sha256 '1eb45bd6545decf5d4f6d1cc9af118d4f54c66a4543ad1590239771dd8d65fca'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
