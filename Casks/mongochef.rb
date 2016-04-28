cask 'mongochef' do
  version '3.5.1'
  sha256 'ee6fde6fc849226def9f550cbdc4db1b3bf0fd8f842abe81c9ede84e0b0cb498'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app '3T MongoChef.app'
end
