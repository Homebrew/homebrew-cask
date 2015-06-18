cask :v1 => 'putiosync' do
  version :latest
  sha256 :no_check

  url 'https://github.com/arrizer/PutIOSync-OSX/raw/master/App/PutIOSync.app.zip'
  name 'PutIOSync'
  homepage 'https://github.com/arrizer/PutIOSync-OSX'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PutIOSync.app'
end
