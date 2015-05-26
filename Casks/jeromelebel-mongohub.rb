cask :v1 => 'jeromelebel-mongohub' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  appcast 'https://mongohub.s3.amazonaws.com/mongohub_su_feed.xml'
  name 'MongoHub'
  homepage 'https://github.com/jeromelebel/MongoHub-Mac'
  license :oss

  app 'MongoHub.app'
end
