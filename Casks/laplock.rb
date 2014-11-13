cask :v1 => 'laplock' do
  version :latest
  sha256 :no_check

  # amazonaws is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/laplock/laplock.app.zip'
  homepage 'http://beta.vyte.in/laplock-www/'
  license :gratis

  app 'laplock.app'
end
