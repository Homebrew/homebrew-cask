class Mongohub < Cask
  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  appcast 'https://mongohub.s3.amazonaws.com/mongohub_su_feed.xml'
  homepage 'https://github.com/fotonauts/MongoHub-Mac'
  version 'latest'
  sha256 :no_check
  link 'MongoHub.app'
end
