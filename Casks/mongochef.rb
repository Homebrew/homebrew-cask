cask 'mongochef' do
  version '4.0.1'
  sha256 'f9668ae195dafd27ae206c3f1033e7352d9cbdf85b2f32b86071978226bd259b'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
