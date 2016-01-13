cask 'jeromelebel-mongohub' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  appcast 'https://mongohub.s3.amazonaws.com/mongohub_su_feed.xml',
          :sha256 => '4358ac01e8609e468c42f6ce3e944cb3875d106987e299584bcd0ccac7c5b5e7'
  name 'MongoHub'
  homepage 'https://github.com/jeromelebel/MongoHub-Mac'
  license :oss

  app 'MongoHub.app'
end
