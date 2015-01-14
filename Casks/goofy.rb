cask :v1 => 'goofy' do
  version :latest
  sha256 :no_check

  url 'https://goofyapp.s3.amazonaws.com/Goofy.app.zip'
  name 'Goofy'
  homepage 'http://www.goofyapp.com/'
  license :gratis

  app 'Goofy.app'
end
