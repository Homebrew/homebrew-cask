cask 'mongochef' do
  version '4.4.0'
  sha256 '1dcf75c94827622902425a01e554055d3030befd6dfa05f74039fce5a44b110b'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
