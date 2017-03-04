cask 'putiosync' do
  version :latest
  sha256 :no_check

  url 'https://github.com/arrizer/PutIOSync-OSX/raw/master/App/PutIOSync.app.zip'
  name 'PutIOSync'
  homepage 'https://github.com/arrizer/PutIOSync-OSX'

  app 'PutIOSync.app'
end
