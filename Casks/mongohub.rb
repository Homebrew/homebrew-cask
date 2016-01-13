cask 'mongohub' do
  version :latest
  sha256 :no_check

  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  appcast 'https://mongohub.s3.amazonaws.com/mongohub_su_feed.xml',
          :checkpoint => '4358ac01e8609e468c42f6ce3e944cb3875d106987e299584bcd0ccac7c5b5e7'
  name 'MongoHub'
  homepage 'https://github.com/jeromelebel/MongoHub-Mac'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MongoHub.app'
end
