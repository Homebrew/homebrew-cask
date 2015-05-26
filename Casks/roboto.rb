cask :v1 => 'roboto' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  name 'Roboto'
  homepage 'http://roboto.build/'
  license :gratis

  app 'Roboto.app'
end
