cask :v1 => 'putiosync' do
  version :latest
  sha256 :no_check

  url 'https://github.com/arrizer/PutIOSync-OSX/raw/master/App/PutIOSync.app.zip'
  homepage 'https://github.com/arrizer/PutIOSync-OSX'
  license :unknown    # todo: improve this machine-generated value

  app 'PutIOSync.app'
end
