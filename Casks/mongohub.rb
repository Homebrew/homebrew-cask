cask :v1 => 'mongohub' do
  version :latest
  sha256 :no_check

  url 'https://mongohub.s3.amazonaws.com/MongoHub.zip'
  name 'MongoHub'
  homepage 'https://github.com/jeromelebel/MongoHub-Mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MongoHub.app'
end
