cask 'mongochef' do
  version '4.3.0'
  sha256 '32822f208a91eae58f64cbde17241020b2112026a621009e81441b677d3fc1c9'

  url "https://cdn.3t.io/mongochef-core/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'

  app 'MongoChef.app'
end
