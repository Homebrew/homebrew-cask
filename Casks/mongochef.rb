cask 'mongochef' do
  version '3.4.1'
  sha256 'a2cb482d24654fbfec5211da10717e2d0785f50fd2d0ccab6001c48293015efc'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
