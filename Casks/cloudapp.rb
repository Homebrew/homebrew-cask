cask :v1 => 'cloudapp' do
  version '3.5.3'
  sha256 '5fd6e0e5e1a4c9d37150acda5df40cc35ef29fb75f20073c213c52e2647cd9f4'

  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'http://getcloudapp.com'
  license :gratis

  app 'CloudApp.app'
end
