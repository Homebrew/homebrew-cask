cask 'anylist' do
  version '1.0.8'
  sha256 '82564129a68a06f3c0f8455b0f3c79fd0458edf2af1d3f63fa389696856b3cbf'

  url 'http://files.anylistapp.com/mac/AnyList.zip'
  appcast 'https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml'
  name 'AnyList'
  homepage 'https://www.anylistapp.com/'

  app 'AnyList.app'
end
