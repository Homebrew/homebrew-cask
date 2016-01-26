cask 'anylist' do
  version :latest
  sha256 :no_check

  url 'http://files.anylistapp.com/mac/AnyList.zip'
  name 'AnyList'
  homepage 'https://www.anylistapp.com/'
  license :gratis

  app 'AnyList.app'
end
