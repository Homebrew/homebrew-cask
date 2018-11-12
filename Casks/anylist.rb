cask 'anylist' do
  version :latest
  sha256 :no_check

  url 'http://files.anylistapp.com/mac/AnyList.zip'
  appcast 'https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml'
  name 'AnyList'
  homepage 'https://www.anylistapp.com/'

  app 'AnyList.app'
end
