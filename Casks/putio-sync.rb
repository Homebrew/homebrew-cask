cask :v1 => 'putio-sync' do
  version :latest
  sha256 :no_check

  url 'https://github.com/arrizer/PutIOSync-OSX/raw/master/App/PutIOSync.app.zip'
  homepage 'https://github.com/arrizer/PutIOSync-OSX'
  license :unknown

  app 'PutIOSync.app'
end
