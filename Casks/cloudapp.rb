cask :v1 => 'cloudapp' do
  version '3.7.0'
  sha256 '29b6ad9938c76e9007a66f156922777fd5ec3deb6ac6d3b3a6d147142d07cb9a'

  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'http://www.getcloudapp.com/'
  license :commercial

  app 'CloudApp.app'
end
