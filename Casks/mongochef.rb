cask 'mongochef' do
  version '4.5.2'
  sha256 'd28c2c5c724cf0a6f46025a0adfa9d336ff89a6ff184a5d89fb483e292410928'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  appcast 'http://downloads.3t.io/mongochef-core/changelog.txt',
          checkpoint: '3bbdf1822749f7f469f6f01f416dad6e97eadde83a65b4a7db24af6b128e4470'
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
