cask 'mongochef' do
  version '4.5.5'
  sha256 '862b18acdf433151413b3f8e66645e3ade55c828466d1b76a4babb7967398de7'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  appcast 'http://downloads.3t.io/mongochef-core/changelog.txt',
          checkpoint: 'e25999a0785eb04736917ee64e1e491eb4e5cca6beddac8a6e5a906af1553f95'
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
