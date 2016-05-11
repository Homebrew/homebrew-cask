cask 'boxy' do
  version '1.1'
  sha256 :no_check

  url 'https://boxyapp.s3.amazonaws.com/trials/1.1/Boxy.zip'
  name 'Boxy'
  homepage 'http://www.boxyapp.co'
  license :closed

  app 'Boxy Trial.app'
end
