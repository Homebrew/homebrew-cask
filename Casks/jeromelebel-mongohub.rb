cask 'jeromelebel-mongohub' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  appcast 'https://mongohub.s3.amazonaws.com/mongohub_su_feed.xml',
          :sha256 => 'c5c16c0ca7331624f6e8f6154b88bb16648ee66706d613c5fc0f4863ff7f1eb3'
  name 'MongoHub'
  homepage 'https://github.com/jeromelebel/MongoHub-Mac'
  license :oss

  app 'MongoHub.app'
end
