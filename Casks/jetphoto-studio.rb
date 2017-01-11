cask 'jetphoto-studio' do
  version '5.6'
  sha256 '71a626ea2e05cadc523797cb0c1d1569f5b9583af4a7c182f3cef2621b1d271c'

  url "http://www.jetphotosoft.com/web/download/JetPhoto_Studio_mac#{version}.zip"
  name 'JetPhoto Studio'
  homepage 'http://www.jetphotosoft.com/web/home/'

  app 'JetPhoto Studio.app'
end
