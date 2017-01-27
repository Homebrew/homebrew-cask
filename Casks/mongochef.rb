cask 'mongochef' do
  version '4.5.2'
  sha256 'd28c2c5c724cf0a6f46025a0adfa9d336ff89a6ff184a5d89fb483e292410928'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  appcast 'https://downloads.3t.io/mongochef-core/changelog.txt',
          checkpoint: 'e25999a0785eb04736917ee64e1e491eb4e5cca6beddac8a6e5a906af1553f95'
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
