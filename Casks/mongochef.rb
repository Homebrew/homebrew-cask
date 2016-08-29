cask 'mongochef' do
  version '4.1.1'
  sha256 '81c0dc9ee9dd7800c405a79bcaad80d17be9eb6a1b5a09be42479388b8b2780e'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
