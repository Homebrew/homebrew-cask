cask 'mongochef' do
  version '4.1.0'
  sha256 'b4f1c3ad195284bf09e3ece56a6f613c3be2cb8bf7a5bdda9d5149465311d6b8'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
