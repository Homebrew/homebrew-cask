cask 'mongochef' do
  version '4.5.1'
  sha256 '8221b179fef6946244ff439cdadb55f408481690bcaec996c1d59c664f966590'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  appcast 'http://downloads.3t.io/mongochef-core/changelog.txt',
          checkpoint: '464de2612fe807d96e7f66fd967ce86cea55ceef013d593862f580bf9df1852f'
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
