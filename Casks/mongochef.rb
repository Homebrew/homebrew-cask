cask 'mongochef' do
  version '4.5.0'
  sha256 '2b9ec5c84485bcf3f7df29766a642b444a4b6e302a3330c4c6968ef46c5af0a4'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  appcast 'http://downloads.3t.io/mongochef-core/changelog.txt',
          checkpoint: '475cc58f1530cb5592c4d8b9dd2b8d533986b4bc723acfa80e902d9855c9fb29'
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
